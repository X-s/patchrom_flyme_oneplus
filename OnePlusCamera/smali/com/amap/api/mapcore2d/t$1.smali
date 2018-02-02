.class Lcom/amap/api/mapcore2d/t$1;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/t;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/t;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amap/api/mapcore2d/t$1;->a:Lcom/amap/api/mapcore2d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t$1;->a:Lcom/amap/api/mapcore2d/t;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/t;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 118
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t$1;->a:Lcom/amap/api/mapcore2d/t;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/t;->b(Lcom/amap/api/mapcore2d/t;)Lcom/amap/api/mapcore2d/t$a;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t$1;->a:Lcom/amap/api/mapcore2d/t;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/t;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 120
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    monitor-exit p0

    .line 128
    return-void

    .line 120
    :cond_0
    :try_start_1
    aget-object v0, v2, v1

    .line 121
    iget-object v4, p0, Lcom/amap/api/mapcore2d/t$1;->a:Lcom/amap/api/mapcore2d/t;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/t;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    check-cast v0, Lcom/amap/api/mapcore2d/ac;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "MapOverlayImageView"

    const-string/jumbo v2, "changeOverlayIndex"

    .line 125
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/db;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
