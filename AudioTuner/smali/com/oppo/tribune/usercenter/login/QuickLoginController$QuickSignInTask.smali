.class Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;
.super Ljava/lang/Object;
.source "QuickLoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/QuickLoginController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSignInTask"
.end annotation


# instance fields
.field private mSignInCancelled:Z

.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->mSignInCancelled:Z

    .line 195
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->mSignInCancelled:Z

    .line 199
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 203
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/util/AccessCookies;->clear(Landroid/content/Context;)V

    .line 204
    new-instance v0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;

    invoke-direct {v0}, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;-><init>()V

    .line 206
    .local v0, "method":Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;
    const-wide/16 v2, -0x1

    .line 207
    .local v2, "uid":J
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->signIn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->getSignInUserId()J

    move-result-wide v2

    .line 211
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->mSignInCancelled:Z

    if-nez v1, :cond_2

    .line 212
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # setter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mUserId:J
    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$1002(Lcom/oppo/tribune/usercenter/login/QuickLoginController;J)J

    .line 214
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/LoginUtils;->whenSignInSuccess(Landroid/content/Context;J)V

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$200(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignResult:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$1100(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$200(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignResult:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$1100(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v1

    const v4, 0x5f6136e

    invoke-static {v1, v4}, Lcom/oppo/statistics/NearMeStatistics;->onUserAction(Landroid/content/Context;I)V

    .line 224
    return-void
.end method
