.class Lcom/oneplus/camera/AgentActivity$2;
.super Ljava/lang/Object;
.source "AgentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AgentActivity;->doRequestedStartActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AgentActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AgentActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oneplus/camera/AgentActivity$2;->this$0:Lcom/oneplus/camera/AgentActivity;

    iput-object p2, p0, Lcom/oneplus/camera/AgentActivity$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    const-string v0, "CameraAgentActivity"

    const-string v1, "doRequestedStartActivity() - Start "

    iget-object v2, p0, Lcom/oneplus/camera/AgentActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity$2;->this$0:Lcom/oneplus/camera/AgentActivity;

    iget-object v1, p0, Lcom/oneplus/camera/AgentActivity$2;->val$intent:Landroid/content/Intent;

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/AgentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method
