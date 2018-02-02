.class Lcom/amap/api/mapcore2d/t;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/t$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/ac;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/mapcore2d/t$a;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput v0, Lcom/amap/api/mapcore2d/t;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    new-instance v0, Lcom/amap/api/mapcore2d/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/t$a;-><init>(Lcom/amap/api/mapcore2d/t;Lcom/amap/api/mapcore2d/t$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/t;->c:Lcom/amap/api/mapcore2d/t$a;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/t;->d:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/amap/api/mapcore2d/t$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/t$1;-><init>(Lcom/amap/api/mapcore2d/t;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/t;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    sget v0, Lcom/amap/api/mapcore2d/t;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore2d/t;->a:I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore2d/t;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/t;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/t;)Lcom/amap/api/mapcore2d/t$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->c:Lcom/amap/api/mapcore2d/t$a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    return-object v3

    .line 89
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ac;

    .line 90
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/t;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/t;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const-string/jumbo v1, "clear"

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_2
    return-void

    .line 58
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ac;

    .line 59
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ac;->l()V

    goto :goto_0

    .line 64
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ac;

    .line 65
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ac;->l()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GLOverlayLayer"

    .line 69
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amapApi"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GLOverlayLayer clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v2, "draw"

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 145
    iget-object v1, p0, Lcom/amap/api/mapcore2d/t;->c:Lcom/amap/api/mapcore2d/t$a;

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 146
    iget-object v1, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 147
    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 154
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 155
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    return-void

    .line 147
    :cond_1
    aget-object v0, v3, v1

    .line 149
    :try_start_0
    iget-object v5, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Lcom/amap/api/mapcore2d/ac;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    const-string/jumbo v5, "GLOverlayLayer"

    .line 151
    invoke-static {v0, v5, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 155
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ac;

    .line 157
    :try_start_1
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ac;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    .line 158
    if-gt v1, v4, :cond_3

    .line 163
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ac;->a(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    const-string/jumbo v4, "GLOverlayLayer"

    .line 167
    invoke-static {v0, v4, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_3
    :try_start_2
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ac;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ac;->a(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public a(Lcom/amap/api/mapcore2d/ac;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/t;->b(Ljava/lang/String;)Z

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/t;->c()V

    .line 102
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const-string/jumbo v1, "destory"

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/t;->a()V

    .line 86
    :goto_1
    return-void

    .line 77
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ac;

    .line 78
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ac;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GLOverlayLayer"

    .line 83
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amapApi"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GLOverlayLayer destory erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/t;->c(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ac;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
