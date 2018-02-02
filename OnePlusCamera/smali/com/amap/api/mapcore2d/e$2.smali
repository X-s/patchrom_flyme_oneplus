.class Lcom/amap/api/mapcore2d/e$2;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/e;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/e;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string/jumbo v3, "run"

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 191
    if-nez v1, :cond_1

    .line 195
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    move-object v1, v0

    .line 200
    :goto_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    .line 237
    :cond_0
    :goto_3
    return-void

    :cond_1
    const-string/jumbo v2, "TaskRunCach"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AsyncServer"

    .line 235
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 200
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v2, :cond_7

    .line 204
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-nez v2, :cond_8

    move-object v2, v0

    .line 208
    :goto_4
    if-nez v2, :cond_9

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_a

    .line 215
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/e;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 219
    :goto_5
    if-nez v0, :cond_b

    .line 223
    :cond_5
    :goto_6
    :try_start_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v1

    if-eq v1, v6, :cond_c

    :cond_6
    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 202
    :cond_7
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;Z)Z

    goto :goto_2

    .line 205
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/e;->g()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/amap/api/mapcore2d/bl;->a(IZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 208
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    .line 209
    goto :goto_2

    .line 212
    :cond_a
    return-void

    .line 218
    :catch_1
    move-exception v0

    const-string/jumbo v4, "AsyncServer"

    .line 217
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5

    .line 219
    :cond_b
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/e;->c:Landroid/content/Context;

    .line 220
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cj;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$2;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/amap/api/mapcore2d/bl;->a(Ljava/util/List;Z)V

    goto :goto_6

    .line 223
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v1

    if-nez v1, :cond_6

    const-wide/16 v4, 0x32

    .line 225
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :goto_7
    move-object v1, v0

    move-object v0, v2

    .line 230
    goto/16 :goto_2

    :catch_2
    move-exception v1

    .line 227
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7

    .line 230
    :catch_3
    move-exception v1

    const-string/jumbo v4, "AsyncServer"

    .line 229
    invoke-static {v1, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7
.end method
