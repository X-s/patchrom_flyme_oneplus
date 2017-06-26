.class Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$000(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c01ed

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    const/4 v0, 0x1

    .line 327
    .local v0, "isEnabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    if-eqz v0, :cond_3

    .line 329
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 333
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$300(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    # setter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$302(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # invokes: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$400(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 337
    return-void

    .line 323
    .end local v0    # "isEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$000(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c01ec

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 325
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 331
    .restart local v0    # "isEnabled":Z
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2
.end method
