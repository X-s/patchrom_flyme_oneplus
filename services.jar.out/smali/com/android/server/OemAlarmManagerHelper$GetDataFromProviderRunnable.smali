.class Lcom/android/server/OemAlarmManagerHelper$GetDataFromProviderRunnable;
.super Ljava/lang/Object;
.source "OemAlarmManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemAlarmManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetDataFromProviderRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    # getter for: Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/OemAlarmManagerHelper;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "OemAlarmManagerHelper"

    const-string v2, "start run "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    # getter for: Lcom/android/server/OemAlarmManagerHelper;->mLockObj:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/OemAlarmManagerHelper;->access$100()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 169
    :try_start_0
    # getter for: Lcom/android/server/OemAlarmManagerHelper;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/OemAlarmManagerHelper;->access$200()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/OemAlarmManagerHelper;->getDataFromProvider(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/android/server/OemAlarmManagerHelper;->access$300(Landroid/content/Context;)V

    .line 170
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    # getter for: Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/OemAlarmManagerHelper;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "OemAlarmManagerHelper"

    const-string v2, "isSystemReady is true  !!!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    return-void

    .line 170
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 177
    :cond_2
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :goto_1
    # getter for: Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/OemAlarmManagerHelper;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "OemAlarmManagerHelper"

    const-string v2, "sleep 100 ms "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "OemAlarmManagerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleep 100 ms is Interrupted because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
