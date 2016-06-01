.class Lcom/oppo/tribune/usercenter/login/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/oppo/tribune/util/NetCheckService$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public login(Z)V
    .locals 1
    .param p1, "isLogin"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginActivity;->mLoginController:Lcom/oppo/tribune/usercenter/login/LoginController;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->access$000(Lcom/oppo/tribune/usercenter/login/LoginActivity;)Lcom/oppo/tribune/usercenter/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->isLoginTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->finish()V

    .line 130
    :cond_0
    return-void
.end method
