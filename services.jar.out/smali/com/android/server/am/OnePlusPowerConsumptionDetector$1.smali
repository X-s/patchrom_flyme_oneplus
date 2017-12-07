.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;->registerBatteryReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    .local v0, "trackTimeStart":J
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v2, p2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap4(Lcom/android/server/am/OnePlusPowerConsumptionDetector;Landroid/content/Intent;)V

    .line 116
    const-string/jumbo v2, "OPCD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# total elapsed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 116
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 117
    const-string/jumbo v4, " ms"

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
