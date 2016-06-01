.class Lcom/oppo/tribune/usercenter/login/LoginController$5;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 178
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController$5;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController$5;->this$0:Lcom/oppo/tribune/usercenter/login/LoginController;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/tribune/usercenter/login/LoginController;->IS_INTERRUPT:Ljava/lang/Boolean;

    .line 181
    return-void
.end method
