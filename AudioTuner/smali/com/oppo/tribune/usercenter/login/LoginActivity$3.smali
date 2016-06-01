.class Lcom/oppo/tribune/usercenter/login/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/LoginActivity;
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
    .line 136
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$3;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginActivity$3;->this$0:Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginActivity;->finish()V

    .line 140
    return-void
.end method
