.class Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;
.super Ljava/lang/Object;
.source "QuickLoginController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 112
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$600(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$500(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->showQuickLoginDlg(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    new-instance v1, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-direct {v1, v2}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    # setter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignTask:Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;
    invoke-static {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$702(Lcom/oppo/tribune/usercenter/login/QuickLoginController;Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    .line 123
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignTask:Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$700(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$600(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    move-result-object v0

    const v1, 0x7f0c06f0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->showToast(I)V

    goto :goto_0
.end method
