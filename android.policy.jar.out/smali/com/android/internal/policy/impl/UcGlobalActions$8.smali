.class Lcom/android/internal/policy/impl/UcGlobalActions$8;
.super Landroid/content/BroadcastReceiver;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1147
    :cond_0
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1149
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1100(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1160
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1151
    :cond_2
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1154
    const-string v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$100(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1156
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$102(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1157
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    const/4 v3, 0x1

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$300(Lcom/android/internal/policy/impl/UcGlobalActions;Z)V

    goto :goto_0
.end method
