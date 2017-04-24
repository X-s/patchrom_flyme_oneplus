.class Lcom/android/server/policy/UcGlobalActions$1;
.super Landroid/content/BroadcastReceiver;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/policy/UcGlobalActions$1;->this$0:Lcom/android/server/policy/UcGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions$1;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->isShuttingDown:Z
    invoke-static {v2}, Lcom/android/server/policy/UcGlobalActions;->access$000(Lcom/android/server/policy/UcGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    const-string v2, "UcGlobalActions"

    const-string v3, "Device is shutting down... don\'t dismiss animation dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions$1;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/UcGlobalActions;->access$200(Lcom/android/server/policy/UcGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/UcGlobalActions$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/UcGlobalActions$1$1;-><init>(Lcom/android/server/policy/UcGlobalActions$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
