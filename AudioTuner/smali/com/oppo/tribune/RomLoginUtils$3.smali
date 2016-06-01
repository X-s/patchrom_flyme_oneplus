.class Lcom/oppo/tribune/RomLoginUtils$3;
.super Ljava/lang/Object;
.source "RomLoginUtils.java"

# interfaces
.implements Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/RomLoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/RomLoginUtils;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFail()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "RomLoginUtils"

    const-string v1, "ILoginCallback onLoginFail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # invokes: Lcom/oppo/tribune/RomLoginUtils;->dismissLoginDlg()V
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$400(Lcom/oppo/tribune/RomLoginUtils;)V

    .line 209
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # invokes: Lcom/oppo/tribune/RomLoginUtils;->showLoginFailToast()V
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$700(Lcom/oppo/tribune/RomLoginUtils;)V

    .line 210
    return-void
.end method

.method public onLoginSuccess()V
    .locals 2

    .prologue
    .line 197
    const-string v0, "RomLoginUtils"

    const-string v1, "ILoginCallback onLoginSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # invokes: Lcom/oppo/tribune/RomLoginUtils;->dismissLoginDlg()V
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$400(Lcom/oppo/tribune/RomLoginUtils;)V

    .line 199
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # invokes: Lcom/oppo/tribune/RomLoginUtils;->showLoginSuccessToast()V
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$500(Lcom/oppo/tribune/RomLoginUtils;)V

    .line 200
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # getter for: Lcom/oppo/tribune/RomLoginUtils;->mLoginSuccCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$600(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # getter for: Lcom/oppo/tribune/RomLoginUtils;->mLoginSuccCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$600(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;->onLoginSuccessed()V

    .line 203
    :cond_0
    return-void
.end method

.method public onTokenTimeOut()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "RomLoginUtils"

    const-string v1, "ILoginCallback onTokenTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # invokes: Lcom/oppo/tribune/RomLoginUtils;->dismissLoginDlg()V
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$400(Lcom/oppo/tribune/RomLoginUtils;)V

    .line 216
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # getter for: Lcom/oppo/tribune/RomLoginUtils;->mReSigninTask:Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$800(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;->isRunning:Z

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils$3;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # getter for: Lcom/oppo/tribune/RomLoginUtils;->mReSigninTask:Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;
    invoke-static {v0}, Lcom/oppo/tribune/RomLoginUtils;->access$800(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/tribune/util/ThreadUtils;->startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 219
    :cond_0
    return-void
.end method
