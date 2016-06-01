.class Lcom/oppo/tribune/usercenter/login/LoginController$6;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/LoginController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/LoginController;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginController;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$6;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController$6;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$700(Lcom/oppo/tribune/usercenter/login/LoginController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oppo/tribune/usercenter/login/LoginController$6$1;

    invoke-direct {v1, p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginController$6$1;-><init>(Lcom/oppo/tribune/usercenter/login/LoginController$6;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method
