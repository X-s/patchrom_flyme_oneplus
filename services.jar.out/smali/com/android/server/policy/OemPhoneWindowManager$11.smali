.class Lcom/android/server/policy/OemPhoneWindowManager$11;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager;->notifyLidSwitchChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;

.field final synthetic val$lidOpen:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "val$lidOpen"    # Z

    .prologue
    .line 2434
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->val$lidOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2437
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2438
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "lidOpen"

    iget-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->val$lidOpen:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2439
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$11;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2435
    return-void

    .line 2438
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
