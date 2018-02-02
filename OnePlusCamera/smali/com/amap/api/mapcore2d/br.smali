.class Lcom/amap/api/mapcore2d/br;
.super Landroid/view/View;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/br$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/mapcore2d/w;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/aj;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore2d/br$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    new-instance v0, Lcom/amap/api/mapcore2d/br$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/br$a;-><init>(Lcom/amap/api/mapcore2d/br;Lcom/amap/api/mapcore2d/br$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/br;->d:Lcom/amap/api/mapcore2d/br$a;

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/br;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    iput-object p2, p0, Lcom/amap/api/mapcore2d/br;->b:Lcom/amap/api/mapcore2d/w;

    .line 44
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    return-void

    .line 51
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aj;

    .line 52
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aj;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/aj;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/br;->b(Lcom/amap/api/mapcore2d/aj;)Z

    .line 94
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/br;->c()V

    .line 96
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    return-void

    .line 104
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aj;

    .line 105
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aj;->b(Z)V

    goto :goto_0
.end method

.method protected a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 62
    return v1

    .line 60
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 81
    return-void

    .line 75
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aj;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->a()V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/aj;)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->d:Lcom/amap/api/mapcore2d/br$a;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 87
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 90
    return-void

    .line 87
    :cond_0
    aget-object v0, v2, v1

    .line 88
    iget-object v4, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Lcom/amap/api/mapcore2d/aj;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    return-void

    .line 112
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aj;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->g()V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    return-void

    .line 120
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aj;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->h()V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    return-void

    .line 128
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aj;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->i()V

    goto :goto_0
.end method
