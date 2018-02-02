.class abstract Lcom/amap/api/mapcore2d/e;
.super Lcom/amap/api/mapcore2d/av;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore2d/av;"
    }
.end annotation


# instance fields
.field protected a:Lcom/amap/api/mapcore2d/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bl",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/amap/api/mapcore2d/bn;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/av;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->d:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    .line 106
    new-instance v0, Lcom/amap/api/mapcore2d/e$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/e$1;-><init>(Lcom/amap/api/mapcore2d/e;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->f:Ljava/lang/Runnable;

    .line 187
    new-instance v0, Lcom/amap/api/mapcore2d/e$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/e$2;-><init>(Lcom/amap/api/mapcore2d/e;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->g:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/e;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/e;Z)Z
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/e;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->d:Z

    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/e;->f()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->g:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/e;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/bn;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->h:Lcom/amap/api/mapcore2d/bn;

    .line 28
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->h:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->a()V

    .line 29
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    goto :goto_0
.end method

.method protected abstract b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/e;->e()V

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    if-nez v0, :cond_1

    .line 40
    :goto_1
    iput-object v1, p0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    .line 41
    iput-object v1, p0, Lcom/amap/api/mapcore2d/e;->g:Ljava/lang/Runnable;

    .line 42
    iput-object v1, p0, Lcom/amap/api/mapcore2d/e;->f:Ljava/lang/Runnable;

    .line 43
    iput-object v1, p0, Lcom/amap/api/mapcore2d/e;->b:Lcom/amap/api/mapcore2d/ay;

    .line 44
    iput-object v1, p0, Lcom/amap/api/mapcore2d/e;->c:Landroid/content/Context;

    .line 46
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl;->a()V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->a:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl;->c()V

    goto :goto_1
.end method

.method public c()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/amap/api/mapcore2d/av;->c()V

    .line 51
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/e;->e()V

    .line 52
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 62
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->d:Z

    if-eq v0, v1, :cond_0

    .line 65
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/e;->d:Z

    .line 66
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->h:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_2

    .line 73
    :goto_1
    return-void

    .line 63
    :cond_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/e;->f()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/e;->g:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/e;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/bn;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->h:Lcom/amap/api/mapcore2d/bn;

    .line 71
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->h:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->a()V

    goto :goto_1
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 76
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/e;->d:Z

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->h:Lcom/amap/api/mapcore2d/bn;

    if-nez v0, :cond_3

    .line 95
    :goto_1
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v2

    .line 79
    :goto_2
    if-lt v1, v3, :cond_1

    .line 88
    iput-object v4, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 82
    if-nez v0, :cond_2

    .line 79
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->e:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->h:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->b()V

    .line 93
    iput-object v4, p0, Lcom/amap/api/mapcore2d/e;->h:Lcom/amap/api/mapcore2d/bn;

    goto :goto_1
.end method

.method protected abstract f()I
.end method

.method protected abstract g()I
.end method
