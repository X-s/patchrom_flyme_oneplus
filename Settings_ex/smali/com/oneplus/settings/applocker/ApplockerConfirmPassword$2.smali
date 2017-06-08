.class Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;
.super Ljava/lang/Object;
.source "ApplockerConfirmPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->init(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDeleteButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0212

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getMaxLockPasswordSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->checkPassword()V
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$200(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    .line 159
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$2;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mDeleteButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0211

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
