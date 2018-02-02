.class Lcom/amap/api/mapcore2d/bd;
.super Ljava/lang/Object;
.source "PolygonDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ae;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:F

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:F

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/ad;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/amap/api/maps2d/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/amap/api/mapcore2d/bd;->b:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bd;->c:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bd;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    const-string/jumbo v1, "PolygonDelegateImp"

    .line 33
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bd;->a:Lcom/amap/api/mapcore2d/b;

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bd;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bd;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    const-string/jumbo v2, "PolygonDelegateImp"

    .line 37
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iput p1, p0, Lcom/amap/api/mapcore2d/bd;->b:F

    .line 68
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 69
    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    iput p1, p0, Lcom/amap/api/mapcore2d/bd;->f:I

    .line 233
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 191
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 195
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    iget v4, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    .line 196
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    invoke-direct {v1, v4, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 197
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 198
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bd;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 200
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v2

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 208
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bd;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 212
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 214
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bd;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bd;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 218
    return-void

    .line 202
    :cond_2
    new-instance v4, Lcom/amap/api/mapcore2d/u;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    iget v5, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    invoke-direct {v4, v5, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 204
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 205
    iget-object v5, p0, Lcom/amap/api/mapcore2d/bd;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 206
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bd;->h:Ljava/util/List;

    .line 57
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bd;->b(Ljava/util/List;)V

    .line 58
    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bd;->c:Z

    .line 79
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 177
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bd;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bd;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->x()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_2

    .line 184
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bd;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v1

    .line 185
    :goto_0
    return v0

    .line 178
    :cond_1
    return v0

    .line 182
    :cond_2
    return v1

    .line 184
    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bd;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 185
    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/model/LatLngBounds;->intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/ac;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return v2
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bd;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/cj;->a(Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Ljava/lang/String;)Z

    .line 44
    return-void
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    iput p1, p0, Lcom/amap/api/mapcore2d/bd;->e:F

    .line 223
    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    iput p1, p0, Lcom/amap/api/mapcore2d/bd;->g:I

    .line 243
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 98
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v7

    .line 99
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 100
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {v7}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bd;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 123
    return-void

    .line 102
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v0

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x1

    .line 112
    if-le v2, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    .line 114
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ad;

    .line 115
    iget v3, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v4, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    if-ne v3, v4, :cond_0

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v1, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 103
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    new-instance v6, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bd;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ad;)V

    .line 107
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v7, v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-object v1, v0

    .line 110
    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "Polygon"

    .line 49
    invoke-static {v0}, Lcom/amap/api/mapcore2d/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bd;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget v0, p0, Lcom/amap/api/mapcore2d/bd;->b:F

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bd;->c:Z

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    iget v0, p0, Lcom/amap/api/mapcore2d/bd;->e:F

    return v0
.end method

.method public h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    iget v0, p0, Lcom/amap/api/mapcore2d/bd;->f:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bd;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    iget v0, p0, Lcom/amap/api/mapcore2d/bd;->g:I

    return v0
.end method

.method k()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 137
    return-object v1

    .line 127
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    return-object v1

    .line 128
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    .line 129
    if-eqz v0, :cond_1

    .line 130
    new-instance v3, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 131
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bd;->a:Lcom/amap/api/mapcore2d/b;

    iget v5, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    invoke-virtual {v4, v5, v0, v3}, Lcom/amap/api/mapcore2d/b;->b(IILcom/amap/api/mapcore2d/r;)V

    .line 132
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method
