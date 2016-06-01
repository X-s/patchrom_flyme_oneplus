.class Lcom/oppo/tribune/usercenter/login/LoginController$1;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/LoginController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/LoginController;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginController;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x1

    .line 85
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$000(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$000(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/LoginView;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "strInputAccount":Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # invokes: Lcom/oppo/tribune/usercenter/login/LoginController;->getPasswordFromDb(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$100(Lcom/oppo/tribune/usercenter/login/LoginController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "strPassword":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$000(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->setPassword(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$000(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->setImgSavePsswordChecked(Z)V

    .line 94
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # setter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mIsLastAutoFillPassword:Z
    invoke-static {v2, v3}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$202(Lcom/oppo/tribune/usercenter/login/LoginController;Z)Z

    goto :goto_0

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mIsLastAutoFillPassword:Z
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$200(Lcom/oppo/tribune/usercenter/login/LoginController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$000(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->setPassword(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    const/4 v3, 0x0

    # setter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mIsLastAutoFillPassword:Z
    invoke-static {v2, v3}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$202(Lcom/oppo/tribune/usercenter/login/LoginController;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 81
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 75
    return-void
.end method
