.class Lcom/oppo/tribune/usercenter/login/LoginController$2;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 128
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginModel:Lcom/oppo/tribune/usercenter/login/LoginModel;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$300(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/LoginModel;->readFromDataBase()Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$000(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginView;

    move-result-object v1

    const v2, 0x7f0c04a7

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/usercenter/login/LoginView;->showToast(I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$000(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/usercenter/login/LoginView;->showAccountPopWd(Ljava/util/List;)V

    goto :goto_0
.end method
