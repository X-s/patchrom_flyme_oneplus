.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastTwilightState()Lcom/android/server/twilight/TwilightState;
    .locals 6

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v3

    monitor-enter v3

    .line 128
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 129
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/Location;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/server/twilight/TwilightService;->-wrap0(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/twilight/TwilightService;->-set0(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)Lcom/android/server/twilight/TwilightState;

    .line 130
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Lcom/android/server/twilight/TwilightState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/twilight/TwilightService;->-set1(Lcom/android/server/twilight/TwilightService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 131
    const-string/jumbo v2, "TwilightService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLastTwilightState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v5}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Lcom/android/server/twilight/TwilightState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v5}, Lcom/android/server/twilight/TwilightService;->-get4(Lcom/android/server/twilight/TwilightService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Lcom/android/server/twilight/TwilightState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 125
    .end local v0    # "currentTimeMillis":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    .line 103
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    .line 100
    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    .end local v0    # "wasEmpty":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    .line 115
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get3(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 112
    return-void

    .line 113
    .end local v0    # "wasEmpty":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
