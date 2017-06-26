.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 184
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0c01ed

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    .line 192
    .local v0, "isEnaabled":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$300(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2$1;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;)V

    const-wide/16 v4, 0x28a

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    :cond_0
    return-void

    .line 187
    .end local v0    # "isEnaabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0c01ec

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 189
    goto :goto_1
.end method
