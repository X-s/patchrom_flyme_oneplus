.class Lcom/android/settings_ex/deviceinfo/Status$4;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Status$4;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/Status;->access$700()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status$4;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    # getter for: Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Status;->access$800(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    :cond_0
    return-void
.end method
