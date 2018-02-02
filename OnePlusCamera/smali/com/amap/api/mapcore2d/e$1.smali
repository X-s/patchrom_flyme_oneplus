.class Lcom/amap/api/mapcore2d/e$1;
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
    .line 106
    iput-object p1, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v3, "run"

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 110
    if-nez v0, :cond_2

    .line 115
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_1
    move-object v2, v1

    .line 120
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 184
    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string/jumbo v2, "TaskRunDownLoad"

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AsyncServer"

    .line 182
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 120
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_7

    .line 124
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getNetworkEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-nez v0, :cond_9

    .line 144
    :goto_4
    if-nez v2, :cond_a

    .line 147
    :goto_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 151
    if-nez v2, :cond_c

    move-object v0, v1

    .line 169
    :cond_5
    :goto_6
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_e

    :cond_6
    move-object v1, v0

    goto :goto_2

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/amap/api/mapcore2d/e;->a(Lcom/amap/api/mapcore2d/e;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 126
    :cond_8
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v4, 0xc8

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 136
    :catch_1
    move-exception v0

    .line 130
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 136
    :catch_2
    move-exception v0

    const-string/jumbo v4, "AsyncServer"

    .line 134
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/e;->g()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/amap/api/mapcore2d/bl;->a(IZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 144
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_5

    .line 148
    :cond_b
    return-void

    .line 152
    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/e;->b(Lcom/amap/api/mapcore2d/e;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 155
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$c;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v0, :cond_0

    .line 160
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/e;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_5
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    .line 165
    :goto_7
    if-eqz v0, :cond_5

    :try_start_6
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_5

    .line 166
    iget-object v1, p0, Lcom/amap/api/mapcore2d/e$1;->a:Lcom/amap/api/mapcore2d/e;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/amap/api/mapcore2d/bl;->a(Ljava/util/List;Z)V

    goto :goto_6

    .line 153
    :cond_d
    return-void

    .line 163
    :catch_3
    move-exception v0

    const-string/jumbo v4, "AsyncServer"

    .line 162
    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_7

    .line 169
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v1

    if-nez v1, :cond_6

    const-wide/16 v4, 0x32

    .line 171
    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    move-object v1, v0

    .line 177
    goto/16 :goto_2

    :catch_4
    move-exception v1

    .line 173
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_8

    .line 177
    :catch_5
    move-exception v1

    const-string/jumbo v4, "AsyncServer"

    .line 175
    invoke-static {v1, v4, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_8
.end method
