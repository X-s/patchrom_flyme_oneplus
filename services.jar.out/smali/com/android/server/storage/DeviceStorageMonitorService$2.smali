.class Lcom/android/server/storage/DeviceStorageMonitorService$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J
    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$402(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    .line 451
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J
    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$502(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    .line 452
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J
    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$602(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    .line 453
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$600(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v4

    add-long/2addr v2, v4

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J
    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$202(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    .line 454
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mGetSize:Z
    invoke-static {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$702(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 455
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatsObserver  mCacheSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheSize:J
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mCodeSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mCodeSize:J
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mDataSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDataSize:J
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$600(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTotalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalSize:J
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method
