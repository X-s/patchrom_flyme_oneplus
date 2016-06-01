.class Lcom/oppo/tribune/usercenter/login/LoginController$3;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 143
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$3;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController$3;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    # invokes: Lcom/oppo/tribune/usercenter/login/LoginController;->login()V
    invoke-static {v0}, Lcom/oppo/tribune/usercenter/login/LoginController;->access$400(Lcom/oppo/tribune/usercenter/login/LoginController;)V

    .line 147
    return-void
.end method
