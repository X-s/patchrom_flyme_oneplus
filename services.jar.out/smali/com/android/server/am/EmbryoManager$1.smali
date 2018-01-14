.class Lcom/android/server/am/EmbryoManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EmbryoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/EmbryoManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/EmbryoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/EmbryoManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/am/EmbryoManager$1;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    const-string/jumbo v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager$1;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v1}, Lcom/android/server/am/EmbryoManager;->-get3(Lcom/android/server/am/EmbryoManager;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string/jumbo v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDeviceIdleMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/EmbryoManager$1;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v3}, Lcom/android/server/am/EmbryoManager;->-get3(Lcom/android/server/am/EmbryoManager;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager$1;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v1}, Lcom/android/server/am/EmbryoManager;->-get3(Lcom/android/server/am/EmbryoManager;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager$1;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v1}, Lcom/android/server/am/EmbryoManager;->-get2(Lcom/android/server/am/EmbryoManager;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager$1;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v1}, Lcom/android/server/am/EmbryoManager;->-get2(Lcom/android/server/am/EmbryoManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b77400

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager$1;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {v1}, Lcom/android/server/am/EmbryoManager;->-get4(Lcom/android/server/am/EmbryoManager;)Lcom/android/server/am/Uterus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/Uterus;->scheduleBackup()V

    .line 94
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager$1;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/am/EmbryoManager;->-set0(Lcom/android/server/am/EmbryoManager;J)J

    .line 80
    :cond_1
    return-void

    .line 84
    :cond_2
    return-void
.end method
