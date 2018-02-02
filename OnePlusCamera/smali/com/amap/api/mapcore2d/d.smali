.class abstract Lcom/amap/api/mapcore2d/d;
.super Ljava/lang/Object;
.source "AnimBase.java"


# instance fields
.field protected a:I

.field protected b:I

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/amap/api/mapcore2d/d;->c:Landroid/os/Handler;

    .line 12
    iput v1, p0, Lcom/amap/api/mapcore2d/d;->d:I

    .line 13
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/d;->e:Z

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/d;->f:Z

    .line 77
    new-instance v0, Lcom/amap/api/mapcore2d/d$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/d$1;-><init>(Lcom/amap/api/mapcore2d/d;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/d;->g:Ljava/lang/Runnable;

    .line 25
    iput p1, p0, Lcom/amap/api/mapcore2d/d;->a:I

    .line 26
    iput p2, p0, Lcom/amap/api/mapcore2d/d;->b:I

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/d;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/amap/api/mapcore2d/d;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/d;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/d;->h()V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/d;)Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/d;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/d;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/d;->i()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/d;->e:Z

    .line 47
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/amap/api/mapcore2d/d;->d:I

    iget v1, p0, Lcom/amap/api/mapcore2d/d;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/d;->d:I

    .line 51
    iget v0, p0, Lcom/amap/api/mapcore2d/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore2d/d;->d:I

    iget v1, p0, Lcom/amap/api/mapcore2d/d;->a:I

    if-le v0, v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/d;->g()V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/d;->b(Z)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/d;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/d;->e:Z

    .line 59
    return-void
.end method

.method protected abstract b()V
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/d;->f:Z

    .line 66
    return-void
.end method

.method protected abstract c()V
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/d;->i()V

    .line 37
    return-void

    .line 31
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/d;->c:Landroid/os/Handler;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/d;->e:Z

    .line 33
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/d;->f:Z

    .line 34
    iput v2, p0, Lcom/amap/api/mapcore2d/d;->d:I

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/m;->b()V

    .line 41
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/d;->g()V

    .line 42
    iget-object v0, p0, Lcom/amap/api/mapcore2d/d;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 43
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/d;->e:Z

    return v0
.end method
