.class Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;
.super Ljava/lang/Object;
.source "QuickLoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/QuickLoginController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$600(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->dismissQuickLoginDlg()V

    .line 234
    :cond_0
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$600(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    move-result-object v0

    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->showToast(I)V

    .line 237
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # invokes: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->updateSignInRecord()V
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$1200(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    .line 238
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$1300(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$1300(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;->onLoginSuccessed()V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$600(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    move-result-object v0

    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->showToast(I)V

    goto :goto_0
.end method
