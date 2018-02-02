.class public Lcom/amap/api/maps2d/overlay/BusRouteOverlay;
.super Lcom/amap/api/maps2d/overlay/b;
.source "BusRouteOverlay.java"


# instance fields
.field private a:Lcom/amap/api/services/route/BusPath;

.field private b:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMap;Lcom/amap/api/services/route/BusPath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/b;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p3, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a:Lcom/amap/api/services/route/BusPath;

    .line 42
    invoke-static {p4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 43
    invoke-static {p5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 44
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    .line 45
    return-void
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 338
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    invoke-static {p1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 323
    invoke-static {p2}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    if-nez v2, :cond_0

    .line 328
    return-object v3

    .line 326
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps2d/model/Polyline;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 347
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 212
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 213
    invoke-virtual {v1, p2}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mNodeIconVisible:Z

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v3, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getWalkBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method private a(Lcom/amap/api/services/route/BusStep;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v4

    move v2, v3

    .line 171
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 203
    return-void

    .line 172
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkStep;

    .line 173
    if-eqz v2, :cond_2

    .line 182
    :goto_1
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 185
    invoke-direct {p0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Ljava/util/List;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    .line 187
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_3

    .line 171
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 174
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getRoad()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-direct {p0, v4}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-direct {p0, v1, v5, v6}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/maps2d/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 190
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 192
    add-int/lit8 v1, v2, 0x1

    .line 193
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v1}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 193
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private a(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V
    .locals 10

    .prologue
    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 254
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->e(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 256
    invoke-direct {p0, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->f(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    .line 257
    iget-wide v4, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    cmpl-double v0, v4, v8

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-wide v4, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    cmpl-double v0, v4, v8

    if-lez v0, :cond_1

    .line 259
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->drawLineArrow(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    .line 261
    :cond_1
    return-void

    .line 257
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/services/route/RouteBusLineItem;)V
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v2, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v2}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    .line 225
    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBusColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/WalkStep;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6b65\u884c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u7c73"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 352
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkStep;

    .line 353
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getDistance()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    .line 354
    goto :goto_0
.end method

.method private b(Lcom/amap/api/services/route/BusStep;)V
    .locals 3

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->d(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 300
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->f(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V
    .locals 3

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->e(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 272
    invoke-direct {p0, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->f(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 273
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->drawLineArrow(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/services/route/RouteBusLineItem;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 235
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getDepartureBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v2, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 239
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 237
    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getBusLineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 241
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->c(Lcom/amap/api/services/route/RouteBusLineItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    iget-boolean v2, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mNodeIconVisible:Z

    .line 242
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBusBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private c(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method private c(Lcom/amap/api/services/route/RouteBusLineItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getDepartureBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationItem;->getBusStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getArrivalBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationItem;->getBusStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") \u7ecf\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPassStationNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u7ad9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V
    .locals 3

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->e(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 286
    invoke-direct {p0, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->c(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private d(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v0

    .line 383
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkStep;

    .line 384
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method private e(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v0

    .line 399
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method private f(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method


# virtual methods
.method public addToMap()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a:Lcom/amap/api/services/route/BusPath;

    invoke-virtual {v1}, Lcom/amap/api/services/route/BusPath;->getSteps()Ljava/util/List;

    move-result-object v3

    move v2, v0

    .line 64
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->addStartAndEndMarker()V

    .line 162
    :goto_1
    return-void

    .line 65
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/BusStep;

    .line 66
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v2, v1, :cond_3

    .line 141
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    if-nez v1, :cond_a

    .line 145
    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 151
    :goto_3
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v1

    if-nez v1, :cond_c

    .line 64
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 67
    :cond_3
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/BusStep;

    .line 69
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-nez v4, :cond_7

    .line 81
    :cond_4
    :goto_5
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-nez v4, :cond_8

    .line 109
    :cond_5
    :goto_6
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-nez v4, :cond_9

    .line 115
    :cond_6
    :goto_7
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-nez v4, :cond_1

    .line 117
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 161
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 70
    :cond_7
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 71
    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/BusStep;)V

    goto :goto_5

    .line 82
    :cond_8
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->c(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V

    goto :goto_6

    .line 110
    :cond_9
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-nez v4, :cond_6

    .line 111
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 112
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V

    goto :goto_7

    .line 142
    :cond_a
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 143
    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/BusStep;)V

    goto :goto_3

    .line 146
    :cond_b
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {p0, v1, v4}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v1

    .line 148
    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 152
    :cond_c
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/RouteBusLineItem;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/RouteBusLineItem;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public drawLineArrow(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 360
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBusColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    .line 361
    return-void
.end method

.method protected getBuslineWidth()F
    .locals 1

    .prologue
    const/high16 v0, 0x41900000    # 18.0f

    .line 373
    return v0
.end method

.method public bridge synthetic removeFromMap()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->removeFromMap()V

    return-void
.end method

.method public bridge synthetic setNodeIconVisibility(Z)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/amap/api/maps2d/overlay/b;->setNodeIconVisibility(Z)V

    return-void
.end method

.method public bridge synthetic zoomToSpan()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->zoomToSpan()V

    return-void
.end method
