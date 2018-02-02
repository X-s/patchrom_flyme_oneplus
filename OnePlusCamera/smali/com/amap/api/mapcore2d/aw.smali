.class Lcom/amap/api/mapcore2d/aw;
.super Ljava/lang/Object;
.source "MapServerUrl.java"


# static fields
.field private static b:Lcom/amap/api/mapcore2d/aw;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "http://tm.amap.com"

    .line 18
    iput-object v0, p0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/mapcore2d/aw;
    .locals 2

    .prologue
    const-class v1, Lcom/amap/api/mapcore2d/aw;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/aw;->b:Lcom/amap/api/mapcore2d/aw;

    if-eqz v0, :cond_0

    .line 15
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/aw;->b:Lcom/amap/api/mapcore2d/aw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/aw;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aw;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/aw;->b:Lcom/amap/api/mapcore2d/aw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://grid.amap.com/grid/%d/%d/%d?dpiType=%s&lang=%s&ds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore2d/p;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    const v1, 0x186a0

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 34
    rem-int/lit8 v0, v0, 0x4

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://mt%d.google.cn/vt/lyrs=m"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@285000000&hl=zh-CN&gl=CN&src=app&expIds=201527&rlbl=1&x=%d&y=%d&z=%d&s=Gali"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    const v1, 0x186a0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 42
    rem-int/lit8 v0, v0, 0x4

    const-string/jumbo v1, "http://mst0%d.is.autonavi.com"

    const/4 v2, 0x1

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
