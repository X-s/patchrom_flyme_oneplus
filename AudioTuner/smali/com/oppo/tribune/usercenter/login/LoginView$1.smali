.class Lcom/oppo/tribune/usercenter/login/LoginView$1;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/usercenter/login/LoginView;->getImgSavePswdClkLsn()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/LoginView;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginView$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->bSavePassword:Z
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$000(Lcom/oppo/tribune/usercenter/login/LoginView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->setImgSavePsswordChecked(Z)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$1;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->setImgSavePsswordChecked(Z)V

    goto :goto_0
.end method
