.class Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;
.super Ljava/lang/Object;
.source "LoginModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/LoginModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginTask"
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mIsNeedSavePswd:Z

.field private mPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/LoginModel;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginModel;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "sacePassword"    # Z

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->this$0:Lcom/oppo/tribune/usercenter/login/LoginModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->mAccount:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->mPassword:Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->mIsNeedSavePswd:Z

    .line 61
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 65
    const/4 v3, -0x2

    .line 66
    .local v3, "result":I
    new-instance v4, Lcom/oppo/tribune/LoginUtils$AutoSignUser;

    iget-object v5, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->mPassword:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/oppo/tribune/LoginUtils$AutoSignUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v4, "user":Lcom/oppo/tribune/LoginUtils$AutoSignUser;
    iget-object v5, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->this$0:Lcom/oppo/tribune/usercenter/login/LoginModel;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginModel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oppo/tribune/usercenter/login/LoginModel;->access$000(Lcom/oppo/tribune/usercenter/login/LoginModel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/oppo/tribune/LoginUtils;->signInWithBaseMethod(Landroid/content/Context;Lcom/oppo/tribune/LoginUtils$AutoSignUser;)Lcom/oppo/tribune/BaseSignInResult;

    move-result-object v2

    .line 70
    .local v2, "r":Lcom/oppo/tribune/BaseSignInResult;
    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/oppo/tribune/BaseSignInResult;->getResultId()I

    move-result v5

    int-to-long v0, v5

    .line 72
    .local v0, "longinResult":J
    const-wide/16 v6, 0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 73
    const/4 v3, 0x1

    .line 74
    iget-object v5, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->this$0:Lcom/oppo/tribune/usercenter/login/LoginModel;

    iget-object v6, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->mPassword:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->mIsNeedSavePswd:Z

    # invokes: Lcom/oppo/tribune/usercenter/login/LoginModel;->getUserMsg(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/oppo/tribune/usercenter/login/LoginModel;->access$100(Lcom/oppo/tribune/usercenter/login/LoginModel;Ljava/lang/String;Z)V

    .line 87
    .end local v0    # "longinResult":J
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->this$0:Lcom/oppo/tribune/usercenter/login/LoginModel;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginModel;->mCallBack:Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;
    invoke-static {v5}, Lcom/oppo/tribune/usercenter/login/LoginModel;->access$200(Lcom/oppo/tribune/usercenter/login/LoginModel;)Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;->this$0:Lcom/oppo/tribune/usercenter/login/LoginModel;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginModel;->mCallBack:Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;
    invoke-static {v5}, Lcom/oppo/tribune/usercenter/login/LoginModel;->access$200(Lcom/oppo/tribune/usercenter/login/LoginModel;)Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;->onLoginComplete(I)V

    .line 90
    :cond_1
    return-void

    .line 75
    .restart local v0    # "longinResult":J
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_3

    .line 76
    const/4 v3, 0x0

    goto :goto_0

    .line 77
    :cond_3
    const-wide/16 v6, 0x2

    cmp-long v5, v0, v6

    if-eqz v5, :cond_4

    const-wide/16 v6, 0x3

    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    .line 78
    :cond_4
    const/4 v3, 0x2

    goto :goto_0
.end method
