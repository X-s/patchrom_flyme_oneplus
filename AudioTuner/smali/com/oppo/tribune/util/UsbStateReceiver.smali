.class public Lcom/oppo/tribune/util/UsbStateReceiver;
.super Lcom/oppo/tribune/util/BaseReceiver;
.source "UsbStateReceiver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/BaseReceiver;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/util/UsbStateReceiver;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method private getLeftSpace()J
    .locals 8

    .prologue
    .line 78
    iget-object v2, p0, Lcom/oppo/tribune/util/UsbStateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/tribune/square/resdown/util/Utilities;->getSdRootFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    mul-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oppo/tribune/util/UsbStateReceiver;->showAboutSDcardTips()V

    .line 57
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/oppo/tribune/util/UsbStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    return-void
.end method

.method public showAboutSDcardTips()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-static {}, Lcom/oppo/tribune/square/resdown/util/SystemUtility;->isSdcardExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/oppo/tribune/util/UsbStateReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f0c04ed

    invoke-static {v0, v1, v4}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    iget-object v0, p0, Lcom/oppo/tribune/util/UsbStateReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/tribune/util/UsbStateReceiver$1;

    invoke-direct {v1, p0}, Lcom/oppo/tribune/util/UsbStateReceiver$1;-><init>(Lcom/oppo/tribune/util/UsbStateReceiver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/oppo/tribune/util/UsbStateReceiver;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/util/UsbStateReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f0c04ec

    invoke-static {v0, v1, v4}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public unRegisterReceiver()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oppo/tribune/util/UsbStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    return-void
.end method
