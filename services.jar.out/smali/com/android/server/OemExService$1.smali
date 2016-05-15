.class Lcom/android/server/OemExService$1;
.super Landroid/content/BroadcastReceiver;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/OemExService;->mSystemComplete:Z
    invoke-static {v1, v2}, Lcom/android/server/OemExService;->access$002(Lcom/android/server/OemExService;Z)Z

    .line 168
    iget-object v1, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->CoverObservse_init()V
    invoke-static {v1}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)V

    .line 170
    :cond_0
    return-void
.end method
