.class Lcom/oppo/service/account/CallInfoAgent$1;
.super Lcom/nearme/aidl/ICallBack$Stub;
.source "CallInfoAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/service/account/CallInfoAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/service/account/CallInfoAgent;


# direct methods
.method constructor <init>(Lcom/oppo/service/account/CallInfoAgent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oppo/service/account/CallInfoAgent$1;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    .line 74
    invoke-direct {p0}, Lcom/nearme/aidl/ICallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public myStartActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/oppo/service/account/CallInfoAgent$1;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    # getter for: Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/service/account/CallInfoAgent;->access$0(Lcom/oppo/service/account/CallInfoAgent;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 83
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/oppo/service/account/CallInfoAgent$1;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    # getter for: Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/service/account/CallInfoAgent;->access$0(Lcom/oppo/service/account/CallInfoAgent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method
