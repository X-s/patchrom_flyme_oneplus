.class Lcom/netease/filterenginelibrary/gpuimage/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final g:I = 0x20000

.field private static final h:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private i:Lcom/netease/filterenginelibrary/gpuimage/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/m;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/m;-><init>()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netease/filterenginelibrary/gpuimage/l;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exiting tid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/filterenginelibrary/gpuimage/l;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->a(Lcom/netease/filterenginelibrary/gpuimage/l;Z)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->d:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/m;->c()V

    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->c:I

    const/high16 v4, 0x20000

    if-ge v2, v4, :cond_0

    const-string v2, "Q3Dimension MSM7500 "

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    iget-boolean v2, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->e:Z

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->f:Z

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkGLDriver renderer = \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" multipleContextsAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLimitedGLESContexts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/m;->c()V

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/netease/filterenginelibrary/gpuimage/l;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-nez v1, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/m;->c()V

    iget-boolean v1, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->e:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->j()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/netease/filterenginelibrary/gpuimage/l;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/m;->i:Lcom/netease/filterenginelibrary/gpuimage/l;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
