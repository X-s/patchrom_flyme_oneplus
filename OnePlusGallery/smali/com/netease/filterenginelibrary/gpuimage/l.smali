.class Lcom/netease/filterenginelibrary/gpuimage/l;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/view/Surface;

.field private b:Landroid/os/ConditionVariable;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/util/ArrayList;

.field private s:Z

.field private t:Lcom/netease/filterenginelibrary/gpuimage/k;

.field private u:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/view/Surface;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->r:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->s:Z

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->m:I

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->n:I

    iput-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->p:Z

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->o:I

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->u:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->a:Landroid/view/Surface;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->b:Landroid/os/ConditionVariable;

    return-void
.end method

.method static synthetic a(Lcom/netease/filterenginelibrary/gpuimage/l;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->d:Z

    return-void
.end method

.method private k()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/k;->e()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/k;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/filterenginelibrary/gpuimage/m;->c(Lcom/netease/filterenginelibrary/gpuimage/l;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 21

    new-instance v2, Lcom/netease/filterenginelibrary/gpuimage/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->u:Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->a:Landroid/view/Surface;

    invoke-direct {v2, v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/k;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/Surface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v15, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v2

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->c:Z

    if-eqz v2, :cond_0

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v3

    monitor-enter v3

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->k()V

    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->l()V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object/from16 v20, v2

    move v2, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move-object/from16 v4, v20

    :goto_2
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_11

    :try_start_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->f:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->e:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v14, v0, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->e:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->e:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->f:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    const-string v14, "GLThread"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "mPaused is now "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->f:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " tid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v2

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->l:Z

    if-eqz v2, :cond_2

    const-string v2, "GLThread"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v17, "releasing EGL context because asked to tid="

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->k()V

    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->l()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->l:Z

    const/4 v6, 0x1

    :cond_2
    if-eqz v10, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->k()V

    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->l()V

    const/4 v10, 0x0

    :cond_3
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    if-eqz v2, :cond_4

    const-string v2, "GLThread"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "releasing EGL surface because paused tid="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->k()V

    :cond_4
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v2, :cond_d

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/c;->g(Lcom/netease/filterenginelibrary/gpuimage/c;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/m;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->l()V

    const-string v2, "GLThread"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "releasing EGL context because paused tid="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v14, :cond_7

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/m;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/k;->f()V

    const-string v2, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "terminating EGL because paused tid="

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->g:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->i:Z

    if-nez v2, :cond_9

    const-string v2, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "noticed surfaceView surface lost tid="

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->k()V

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->i:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->h:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->g:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->i:Z

    if-eqz v2, :cond_a

    const-string v2, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "noticed surfaceView surface acquired tid="

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->i:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v7, :cond_b

    const-string v2, "GLThread"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sending render notification tid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->q:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->n()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    if-nez v2, :cond_c

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    const/4 v12, 0x1

    const/4 v11, 0x1

    const/4 v9, 0x1

    move v2, v9

    move v9, v11

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->s:Z

    if-eqz v11, :cond_1a

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->m:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->n:I

    const/4 v5, 0x1

    const-string v11, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "noticing that we want render notification tid="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->s:Z

    :goto_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->p:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    move v12, v9

    move v9, v5

    move v5, v2

    move v2, v11

    move v11, v10

    move v10, v8

    move v8, v7

    move v7, v6

    move v6, v4

    move-object v4, v3

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_e
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/netease/filterenginelibrary/gpuimage/m;->b(Lcom/netease/filterenginelibrary/gpuimage/l;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-eqz v2, :cond_c

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/k;->a()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    const/4 v13, 0x1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v3

    monitor-enter v3

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->k()V

    invoke-direct/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->l()V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v2

    :catch_0
    move-exception v2

    :try_start_a
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/netease/filterenginelibrary/gpuimage/m;->c(Lcom/netease/filterenginelibrary/gpuimage/l;)V

    throw v2

    :cond_f
    move v11, v9

    move v9, v2

    :cond_10
    const-string v2, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "waiting tid="

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mHaveEglContext: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mHaveEglSurface: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mPaused: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->f:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mHasSurface: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->g:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mSurfaceIsBad: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->h:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mWaitingForSurface: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->i:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mWidth: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->m:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mHeight: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->n:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mRequestRender: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->p:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " mRenderMode: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->o:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    :cond_11
    if-eqz v2, :cond_19

    :try_start_b
    const-string v3, "GLThread"

    const-string v14, "egl createSurface"

    invoke-static {v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    invoke-virtual {v3}, Lcom/netease/filterenginelibrary/gpuimage/k;->b()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v14, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->h:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v2

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v2

    :cond_12
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/k;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/netease/filterenginelibrary/gpuimage/m;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v12, 0x0

    move-object v14, v2

    :goto_9
    if-eqz v13, :cond_14

    const-string v2, "GLThread"

    const-string v13, "onSurfaceCreated"

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v2, :cond_13

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/c;->h(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/p;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    iget-object v13, v13, Lcom/netease/filterenginelibrary/gpuimage/k;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v14, v13}, Lcom/netease/filterenginelibrary/gpuimage/p;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_13
    const/4 v13, 0x0

    :cond_14
    if-eqz v10, :cond_16

    const-string v2, "GLThread"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "onSurfaceChanged("

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, ", "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, ")"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v2, :cond_15

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/c;->h(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/p;

    move-result-object v2

    invoke-interface {v2, v14, v6, v5}, Lcom/netease/filterenginelibrary/gpuimage/p;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_15
    const/4 v10, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/c;->h(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/p;

    move-result-object v2

    invoke-interface {v2, v14}, Lcom/netease/filterenginelibrary/gpuimage/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->t:Lcom/netease/filterenginelibrary/gpuimage/k;

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/k;->d()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string v15, "GLThread"

    const-string v16, "eglSwapBuffers"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/k;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v15

    monitor-enter v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v2, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/filterenginelibrary/gpuimage/l;->h:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_a
    :sswitch_0
    if-eqz v9, :cond_1d

    const/4 v8, 0x1

    move-object v15, v14

    move/from16 v20, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v3

    move-object v3, v4

    move/from16 v4, v20

    goto/16 :goto_0

    :sswitch_1
    :try_start_f
    const-string v2, "GLThread"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "egl context lost tid="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v11, 0x1

    goto :goto_a

    :catchall_4
    move-exception v2

    :try_start_10
    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catchall_5
    move-exception v2

    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v2

    :cond_18
    move-object v14, v15

    goto/16 :goto_9

    :cond_19
    move v3, v2

    goto/16 :goto_8

    :cond_1a
    move v11, v12

    move/from16 v20, v5

    move v5, v8

    move v8, v2

    move v2, v4

    move/from16 v4, v20

    goto/16 :goto_7

    :cond_1b
    move v2, v9

    move v9, v11

    goto/16 :goto_6

    :cond_1c
    move v14, v2

    goto/16 :goto_3

    :cond_1d
    move-object v15, v14

    move/from16 v20, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v3

    move-object v3, v4

    move/from16 v4, v20

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private n()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->g:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->h:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->m:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->n:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->p:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->o:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->b:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    const-string v0, "mConditionVariable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCV block() called-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->o:I

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)V
    .locals 6

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->m:I

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->q:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "Main thread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onWindowResize waiting for render complete from tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 2

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->o:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->p:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 6

    const-string v0, "mConditionVariable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCV close() called-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surfaceCreated tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->g:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 6

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surfaceDestroyed tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->g:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "mConditionVariable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCV open() called-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 6

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPause tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->e:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 6

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResume tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->q:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->c:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->d:Z

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/l;->l:Z

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->setName(Ljava/lang/String;)V

    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "starting tid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/l;->m()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/filterenginelibrary/gpuimage/m;->a(Lcom/netease/filterenginelibrary/gpuimage/l;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/filterenginelibrary/gpuimage/m;->a(Lcom/netease/filterenginelibrary/gpuimage/l;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/c;->c()Lcom/netease/filterenginelibrary/gpuimage/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/filterenginelibrary/gpuimage/m;->a(Lcom/netease/filterenginelibrary/gpuimage/l;)V

    throw v0
.end method
