.class Lcom/amap/api/mapcore2d/db$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/db;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/mapcore2d/cu;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/mapcore2d/db;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/db;Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;Z)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amap/api/mapcore2d/db$1;->d:Lcom/amap/api/mapcore2d/db;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/db$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/mapcore2d/db$1;->b:Lcom/amap/api/mapcore2d/cu;

    iput-boolean p4, p0, Lcom/amap/api/mapcore2d/db$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/dr;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/db$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/amap/api/mapcore2d/dr;-><init>(Landroid/content/Context;Z)V

    .line 187
    iget-object v2, p0, Lcom/amap/api/mapcore2d/db$1;->b:Lcom/amap/api/mapcore2d/cu;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/dr;->a(Lcom/amap/api/mapcore2d/cu;)V

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/db$1;->c:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 207
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 192
    :cond_0
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 193
    :try_start_6
    new-instance v0, Lcom/amap/api/mapcore2d/ds;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/db$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore2d/ds;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v2, Lcom/amap/api/mapcore2d/dt;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/dt;-><init>()V

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dt;->c(Z)V

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dt;->a(Z)V

    .line 198
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dt;->b(Z)V

    .line 201
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ds;->a(Lcom/amap/api/mapcore2d/dt;)V

    .line 202
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 203
    :try_start_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/db$1;->d:Lcom/amap/api/mapcore2d/db;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/db;->a(Lcom/amap/api/mapcore2d/db;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 202
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
.end method
