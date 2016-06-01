.class Lcom/oppo/tribune/usercenter/login/QuickLoginController$3;
.super Ljava/lang/Object;
.source "QuickLoginController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 131
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$3;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$3;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignTask:Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$700(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$3;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignTask:Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$700(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;->cancel()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$3;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignTask:Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;
    invoke-static {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$702(Lcom/oppo/tribune/usercenter/login/QuickLoginController;Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    .line 139
    return-void
.end method
