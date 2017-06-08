.class Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$1;
.super Ljava/lang/Object;
.source "ApplockerConfirmComplexPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

.field final synthetic val$hasFocus:Z


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Z)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$1;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    iput-boolean p2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$1;->val$hasFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$1;->val$hasFocus:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$1;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$1;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 188
    :cond_0
    return-void
.end method
