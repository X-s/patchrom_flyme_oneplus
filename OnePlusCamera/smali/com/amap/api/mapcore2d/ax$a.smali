.class Lcom/amap/api/mapcore2d/ax$a;
.super Ljava/lang/Thread;
.source "MarkerDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ax;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ax;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ax;Lcom/amap/api/mapcore2d/ax$1;)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ax$a;-><init>(Lcom/amap/api/mapcore2d/ax;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    const-string/jumbo v1, "run"

    const-string/jumbo v0, "MarkerThread"

    .line 623
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ax$a;->setName(Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    :cond_1
    :goto_1
    return-void

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    .line 625
    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    .line 626
    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 627
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->b(Lcom/amap/api/mapcore2d/ax;)I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_3

    .line 630
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->c(Lcom/amap/api/mapcore2d/ax;)I

    .line 632
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->d(Lcom/amap/api/mapcore2d/ax;)Lcom/amap/api/mapcore2d/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->e(Lcom/amap/api/mapcore2d/ax;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xfa

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 638
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 639
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 628
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax$a;->a:Lcom/amap/api/mapcore2d/ax;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ax;->a(Lcom/amap/api/mapcore2d/ax;I)I

    goto :goto_2

    .line 637
    :catch_1
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    .line 636
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method
