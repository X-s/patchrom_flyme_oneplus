.class Lcom/oppo/tribune/usercenter/login/QuickLoginController$4;
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
    .line 143
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$4;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$4;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$4;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 152
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$4;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mActivityFinishListener:Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$800(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$4;->this$0:Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mActivityFinishListener:Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;
    invoke-static {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->access$800(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;->choose()V

    .line 155
    :cond_0
    return-void
.end method
