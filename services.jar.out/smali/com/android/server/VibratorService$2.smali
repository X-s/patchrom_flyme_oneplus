.class Lcom/android/server/VibratorService$2;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 874
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 875
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 883
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)I

    move-result v2

    if-nez v2, :cond_0

    .line 884
    const-string/jumbo v2, "VibratorService"

    const-string/jumbo v4, "vibrate service don\'t cancel when lidState is close "

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 885
    return-void

    .line 889
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 890
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/VibratorService$Vibration;->isSystemHapticFeedback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 895
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 896
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 897
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 898
    .local v1, "vibration":Lcom/android/server/VibratorService$Vibration;
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 899
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2, v1}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 900
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 875
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    .end local v1    # "vibration":Lcom/android/server/VibratorService$Vibration;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 891
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_4
    monitor-exit v3

    .line 873
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_5
    :goto_2
    return-void

    .line 906
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.LID_SWITCH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 907
    iget-object v2, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    const-string/jumbo v3, "lidOpen"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/VibratorService;->-set0(Lcom/android/server/VibratorService;I)I

    goto :goto_2
.end method
