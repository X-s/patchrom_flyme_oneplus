.class Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;
.super Ljava/lang/Object;
.source "QuickLoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/usercenter/login/QuickLoginController;->loadSignedUserName()V
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
    .line 95
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/TokenSignInResult;->getSignInUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$200(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadFailure:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$100(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # setter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLastUserName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$302(Lcom/oppo/tribune/usercenter/login/QuickLoginController;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$200(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadSuccess:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$400(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
