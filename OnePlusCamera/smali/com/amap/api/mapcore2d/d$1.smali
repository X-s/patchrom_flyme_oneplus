.class Lcom/amap/api/mapcore2d/d$1;
.super Ljava/lang/Object;
.source "AnimBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/d;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/d;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "run"

    .line 80
    iget-object v2, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/d;->a(Lcom/amap/api/mapcore2d/d;)V

    .line 81
    iget-object v2, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/d;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 92
    iget-object v4, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/d;->a()V

    .line 93
    iget-object v4, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/d;->d(Lcom/amap/api/mapcore2d/d;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 95
    sub-long v6, v4, v2

    iget-object v8, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    iget v8, v8, Lcom/amap/api/mapcore2d/d;->b:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    iget v0, v0, Lcom/amap/api/mapcore2d/d;->b:I

    int-to-long v6, v0

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/d;->b(Lcom/amap/api/mapcore2d/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/d;->a(Lcom/amap/api/mapcore2d/d;Landroid/os/Handler;)Landroid/os/Handler;

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/d;->c(Lcom/amap/api/mapcore2d/d;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/d;->b()V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d$1;->a:Lcom/amap/api/mapcore2d/d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/d;->c()V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AnimBase"

    .line 99
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
