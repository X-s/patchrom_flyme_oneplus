.class Lcom/amap/api/mapcore2d/al;
.super Lcom/amap/api/mapcore2d/bk;
.source "InprocessingTiles.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bk",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bk;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/amap/api/mapcore2d/bp;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/al;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/amap/api/mapcore2d/bp;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/al;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/al;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 13
    return v1

    .line 10
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
