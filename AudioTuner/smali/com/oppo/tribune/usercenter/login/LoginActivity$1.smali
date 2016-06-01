.class Lcom/oppo/tribune/usercenter/login/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/usercenter/login/LoginActivity;->getLoginSuccCallBack()Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginSuccessed()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->finish()V

    .line 78
    return-void
.end method
