.class final Lcom/aps/ao;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# instance fields
.field final synthetic a:Lcom/aps/ak;


# direct methods
.method private constructor <init>(Lcom/aps/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/ak;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aps/ao;-><init>(Lcom/aps/ak;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->c(Lcom/aps/ak;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->d(Lcom/aps/ak;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->e(Lcom/aps/ak;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->c(Lcom/aps/ak;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->e(Lcom/aps/ak;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/aps/ak;->a(Lcom/aps/ak;J)J

    if-nez v2, :cond_3

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/aps/ap;

    invoke-direct {v0, p0}, Lcom/aps/ap;-><init>(Lcom/aps/ao;)V

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->d(Lcom/aps/ak;)Ljava/util/Timer;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/aps/ak;->a(Lcom/aps/ak;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->d(Lcom/aps/ak;)Ljava/util/Timer;

    move-result-object v1

    invoke-static {}, Lcom/aps/ak;->z()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    return-void

    :cond_3
    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v3, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v3}, Lcom/aps/ak;->e(Lcom/aps/ak;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->d(Lcom/aps/ak;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/aps/ao;->a:Lcom/aps/ak;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/aps/ak;->a(Lcom/aps/ak;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method
