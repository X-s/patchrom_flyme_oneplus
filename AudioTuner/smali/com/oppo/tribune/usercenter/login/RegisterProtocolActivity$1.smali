.class Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity$1;
.super Ljava/lang/Object;
.source "RegisterProtocolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;->getTitleBarLeftClkLsn()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity$1;->this$0:Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity$1;->this$0:Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;->finish()V

    .line 49
    return-void
.end method
