.class public Lcom/amap/api/mapcore2d/f;
.super Ljava/lang/Thread;
.source "AuthTask.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore2d/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/mapcore2d/f;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/w;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 34
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getNetworkEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Lcom/amap/api/mapcore2d/cj;->a()Lcom/amap/api/mapcore2d/cu;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "002"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "11K"

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/amap/api/mapcore2d/f;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore2d/cm$a;

    move-result-object v1

    .line 48
    sget v2, Lcom/amap/api/mapcore2d/cm;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 57
    :goto_0
    if-nez v1, :cond_4

    .line 71
    :cond_0
    :goto_1
    sput-object v0, Lcom/amap/api/mapcore2d/p;->p:Lcom/amap/api/mapcore2d/cu;

    .line 72
    iget-object v1, p0, Lcom/amap/api/mapcore2d/f;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore2d/db;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;)Lcom/amap/api/mapcore2d/db;

    .line 73
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->interrupt()V

    .line 80
    :goto_2
    return-void

    .line 35
    :cond_1
    return-void

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/w;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    .line 50
    iput v3, v2, Landroid/os/Message;->what:I

    .line 51
    iget-object v3, v1, Lcom/amap/api/mapcore2d/cm$a;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 54
    :goto_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/w;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->interrupt()V

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    const-string/jumbo v2, "mVerfy"

    .line 76
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/db;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 52
    :cond_3
    :try_start_1
    iget-object v3, v1, Lcom/amap/api/mapcore2d/cm$a;->a:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    .line 58
    :cond_4
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cm$a;->p:Lcom/amap/api/mapcore2d/cm$a$a;

    if-nez v2, :cond_5

    .line 62
    :goto_4
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cm$a;->r:Lcom/amap/api/mapcore2d/cm$a$c;

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Lcom/amap/api/mapcore2d/ct;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/f;->a:Landroid/content/Context;

    const-string/jumbo v4, "2dmap"

    iget-object v5, v1, Lcom/amap/api/mapcore2d/cm$a;->r:Lcom/amap/api/mapcore2d/cm$a$c;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/cm$a$c;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/cm$a;->r:Lcom/amap/api/mapcore2d/cm$a$c;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/cm$a$c;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/amap/api/mapcore2d/ct;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ct;->a()V

    goto :goto_1

    .line 59
    :cond_5
    invoke-static {}, Lcom/amap/api/mapcore2d/cj;->a()Lcom/amap/api/mapcore2d/cu;

    move-result-object v2

    iget-object v3, v1, Lcom/amap/api/mapcore2d/cm$a;->p:Lcom/amap/api/mapcore2d/cm$a$a;

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/cm$a$a;->a:Z

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/cu;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
