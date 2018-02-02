.class Lcom/amap/api/mapcore2d/cz$2;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/cz;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 256
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/df;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 258
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    const/4 v3, 0x1

    .line 259
    invoke-static {v1, v3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/df;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 261
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    const/4 v4, 0x2

    .line 262
    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/df;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 264
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/df;->c(Landroid/content/Context;)V

    .line 265
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore2d/df;->c(Landroid/content/Context;)V

    .line 267
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/df;->c(Landroid/content/Context;)V

    .line 268
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/ej;->a(Landroid/content/Context;)V

    .line 269
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cz$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/ei;->a(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 288
    if-nez v2, :cond_1

    .line 281
    :goto_0
    if-nez v1, :cond_2

    .line 284
    :goto_1
    if-nez v0, :cond_3

    .line 288
    :cond_0
    :goto_2
    return-void

    .line 287
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 285
    :goto_3
    if-nez v2, :cond_4

    .line 281
    :goto_4
    if-nez v1, :cond_5

    .line 284
    :goto_5
    if-nez v0, :cond_6

    .line 273
    :goto_6
    return-void

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_7
    :try_start_4
    const-string/jumbo v4, "Log"

    const-string/jumbo v5, "processLog"

    .line 276
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 285
    if-nez v3, :cond_7

    .line 281
    :goto_8
    if-nez v2, :cond_8

    .line 284
    :goto_9
    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_2

    .line 287
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 285
    :goto_a
    if-nez v3, :cond_9

    .line 281
    :goto_b
    if-nez v2, :cond_a

    .line 284
    :goto_c
    if-nez v1, :cond_b

    .line 278
    :goto_d
    throw v0

    .line 279
    :cond_1
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_1

    .line 285
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_2

    .line 279
    :cond_4
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_4

    .line 282
    :cond_5
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_5

    .line 285
    :cond_6
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_6

    .line 279
    :cond_7
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_8

    .line 282
    :cond_8
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_9

    .line 279
    :cond_9
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_b

    .line 282
    :cond_a
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_c

    .line 285
    :cond_b
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/df;->c()V

    goto :goto_d

    .line 287
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_a

    :catchall_2
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_a

    :catchall_3
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_a

    .line 273
    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_7

    :catch_3
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    :catch_4
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    .line 287
    :catch_5
    move-exception v1

    move-object v1, v0

    goto/16 :goto_3

    :catch_6
    move-exception v3

    goto/16 :goto_3
.end method
