.class Lcom/oppo/tribune/usercenter/login/QuickLoginController$7;
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
    .line 177
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$7;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$7;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadingUserName:Z
    invoke-static {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$902(Lcom/oppo/tribune/usercenter/login/QuickLoginController;Z)Z

    .line 182
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$7;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLastUserName:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$300(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$7;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$600(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->getSignInUserView()Lcom/oppo/tribune/SignInUserView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/SignInUserView;->setLoadFailure()V

    .line 186
    :cond_0
    return-void
.end method
