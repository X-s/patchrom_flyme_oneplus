.class Lcom/oneplus/camera/AgreementActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AgreementActivity;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AgreementActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AgreementActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oneplus/camera/AgreementActivity$1;->this$0:Lcom/oneplus/camera/AgreementActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oneplus/camera/AgreementActivity$1;->this$0:Lcom/oneplus/camera/AgreementActivity;

    # invokes: Lcom/oneplus/camera/AgreementActivity;->isSecureMode()Z
    invoke-static {v0}, Lcom/oneplus/camera/AgreementActivity;->access$000(Lcom/oneplus/camera/AgreementActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "AgreementActivity"

    const-string v1, "Intent: "

    const-string v2, ", finish itself"

    invoke-static {v0, v1, p2, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/camera/AgreementActivity$1;->this$0:Lcom/oneplus/camera/AgreementActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/AgreementActivity;->finish()V

    .line 129
    :cond_0
    return-void
.end method
