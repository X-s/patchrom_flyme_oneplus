.class Lcom/amap/api/mapcore2d/du$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/du;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/du;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amap/api/mapcore2d/du$1;->a:Lcom/amap/api/mapcore2d/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/amap/api/mapcore2d/du$1;->a:Lcom/amap/api/mapcore2d/du;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du$1;->a:Lcom/amap/api/mapcore2d/du;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du;->a(Lcom/amap/api/mapcore2d/du;)Ljava/io/Writer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du$1;->a:Lcom/amap/api/mapcore2d/du;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du;->b(Lcom/amap/api/mapcore2d/du;)V

    .line 178
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du$1;->a:Lcom/amap/api/mapcore2d/du;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du;->c(Lcom/amap/api/mapcore2d/du;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :goto_0
    monitor-exit v1

    .line 183
    return-object v3

    .line 175
    :cond_0
    monitor-exit v1

    return-object v3

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du$1;->a:Lcom/amap/api/mapcore2d/du;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du;->d(Lcom/amap/api/mapcore2d/du;)V

    .line 180
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du$1;->a:Lcom/amap/api/mapcore2d/du;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/du;->a(Lcom/amap/api/mapcore2d/du;I)I

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/du$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
