.class Lcom/oneplus/settings/RestorePwdDialog$1;
.super Ljava/lang/Object;
.source "RestorePwdDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/RestorePwdDialog;->onFocusChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/RestorePwdDialog;

.field final synthetic val$isFocus:Z


# direct methods
.method constructor <init>(Lcom/oneplus/settings/RestorePwdDialog;Z)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oneplus/settings/RestorePwdDialog$1;->this$0:Lcom/oneplus/settings/RestorePwdDialog;

    iput-boolean p2, p0, Lcom/oneplus/settings/RestorePwdDialog$1;->val$isFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/oneplus/settings/RestorePwdDialog$1;->this$0:Lcom/oneplus/settings/RestorePwdDialog;

    # getter for: Lcom/oneplus/settings/RestorePwdDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/RestorePwdDialog;->access$000(Lcom/oneplus/settings/RestorePwdDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 84
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/oneplus/settings/RestorePwdDialog$1;->val$isFocus:Z

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/RestorePwdDialog$1;->this$0:Lcom/oneplus/settings/RestorePwdDialog;

    # getter for: Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/oneplus/settings/RestorePwdDialog;->access$100(Lcom/oneplus/settings/RestorePwdDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
