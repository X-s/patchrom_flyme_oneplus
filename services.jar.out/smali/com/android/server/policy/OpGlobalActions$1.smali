.class Lcom/android/server/policy/OpGlobalActions$1;
.super Landroid/content/BroadcastReceiver;
.source "OpGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OpGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpGlobalActions;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    # getter for: Lcom/android/server/policy/OpGlobalActions;->isShuttingDown:Z
    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->access$000(Lcom/android/server/policy/OpGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    const-string v2, "OpGlobalActions"

    const-string v3, "Device is shutting down... don\'t dismiss animation dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    # getter for: Lcom/android/server/policy/OpGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->access$200(Lcom/android/server/policy/OpGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/OpGlobalActions$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OpGlobalActions$1$1;-><init>(Lcom/android/server/policy/OpGlobalActions$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 148
    .end local v1    # "reason":Ljava/lang/String;
    :cond_3
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const-string v2, "OpGlobalActions"

    const-string v3, "Device unlocked, exit."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$1;->this$0:Lcom/android/server/policy/OpGlobalActions;

    # getter for: Lcom/android/server/policy/OpGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->access$200(Lcom/android/server/policy/OpGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/OpGlobalActions$1$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OpGlobalActions$1$2;-><init>(Lcom/android/server/policy/OpGlobalActions$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
