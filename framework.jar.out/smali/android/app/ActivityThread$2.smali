.class Landroid/app/ActivityThread$2;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V
    .locals 0

    .prologue
    .line 5372
    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x400

    .line 5374
    iget-object v5, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-boolean v5, v5, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    if-nez v5, :cond_1

    .line 5390
    :cond_0
    :goto_0
    return-void

    .line 5377
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 5378
    .local v4, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 5379
    .local v0, "dalvikMax":J
    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 5380
    .local v2, "dalvikUsed":J
    const-wide/16 v6, 0x3

    mul-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 5381
    # getter for: Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z
    invoke-static {}, Landroid/app/ActivityThread;->access$3600()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dalvik max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long v8, v0, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " used="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long v8, v2, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5384
    :cond_2
    iget-object v5, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5386
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    iget-object v6, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5387
    :catch_0
    move-exception v5

    goto :goto_0
.end method
