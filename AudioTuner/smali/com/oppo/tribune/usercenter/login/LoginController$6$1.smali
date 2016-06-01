.class Lcom/oppo/tribune/usercenter/login/LoginController$6$1;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/usercenter/login/LoginController$6;->onLoginComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/tribune/usercenter/login/LoginController$6;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginController$6;I)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$6$1;->this$1:Lcom/oppo/tribune/usercenter/login/LoginController$6;

    iput p2, p0, Lcom/oppo/tribune/usercenter/login/LoginController$6$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController$6$1;->val$result:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController$6$1;->this$1:Lcom/oppo/tribune/usercenter/login/LoginController$6;

    iget-object v0, v0, Lcom/oppo/tribune/usercenter/login/LoginController$6;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # invokes: Lcom/oppo/tribune/usercenter/login/LoginController;->loginSucceed()V
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$500(Lcom/oppo/tribune/usercenter/login/LoginController;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController$6$1;->this$1:Lcom/oppo/tribune/usercenter/login/LoginController$6;

    iget-object v0, v0, Lcom/oppo/tribune/usercenter/login/LoginController$6;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    iget v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$6$1;->val$result:I

    # invokes: Lcom/oppo/tribune/usercenter/login/LoginController;->loginFail(I)V
    invoke-static {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$600(Lcom/oppo/tribune/usercenter/login/LoginController;I)V

    goto :goto_0
.end method
