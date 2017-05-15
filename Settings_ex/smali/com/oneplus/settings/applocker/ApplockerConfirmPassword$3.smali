.class Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$3;
.super Ljava/lang/Object;
.source "ApplockerConfirmPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 162
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->checkPassword()V
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$200(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    .line 168
    :cond_0
    return-void
.end method
