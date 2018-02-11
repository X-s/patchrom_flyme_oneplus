.class Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 482
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 480
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 14

    .prologue
    .line 494
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-class v10, Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 495
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v8

    .line 496
    .local v8, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const-wide/16 v6, 0x0

    .line 497
    .local v6, "privateUsedBytes":J
    const-wide/16 v4, 0x0

    .line 498
    .local v4, "privateTotalBytes":J
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 499
    .local v0, "info":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-eqz v9, :cond_1

    .line 500
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 503
    :cond_1
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    .line 504
    .local v2, "path":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v12

    sub-long/2addr v10, v12

    add-long/2addr v6, v10

    .line 511
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_0

    .line 513
    .end local v0    # "info":Landroid/os/storage/VolumeInfo;
    .end local v2    # "path":Ljava/io/File;
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 514
    iget-object v12, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v12, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 515
    iget-object v12, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v12, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 513
    const v12, 0x7f0e0fe0

    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p0, v10}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 492
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 487
    if-eqz p1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$SummaryProvider;->updateSummary()V

    .line 486
    :cond_0
    return-void
.end method
