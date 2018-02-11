.class Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockComplexPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get0(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e0432

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get2(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 355
    const/16 v2, 0x10

    .line 354
    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 356
    .local v0, "isEnabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get1(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 357
    if-eqz v0, :cond_3

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get1(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 362
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get3(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    if-ne v1, v2, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    sget-object v2, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-static {v1, v2}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-set0(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-wrap0(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V

    .line 347
    return-void

    .line 352
    .end local v0    # "isEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get0(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e0431

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isEnabled":Z
    goto :goto_1

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get1(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2
.end method
