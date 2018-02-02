.class public Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;
.super Lcom/amap/api/maps2d/overlay/b;
.source "WalkRouteOverlay.java"


# instance fields
.field private a:Lcom/amap/api/services/route/WalkPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMap;Lcom/amap/api/services/route/WalkPath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/b;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    .line 40
    iput-object p3, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->a:Lcom/amap/api/services/route/WalkPath;

    .line 41
    invoke-static {p4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 42
    invoke-static {p5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 43
    return-void
.end method


# virtual methods
.method public addToMap()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->a:Lcom/amap/api/services/route/WalkPath;

    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkPath;->getSteps()Ljava/util/List;

    move-result-object v4

    move v2, v3

    .line 52
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->addStartAndEndMarker()V

    .line 102
    return-void

    .line 53
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkStep;

    .line 55
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 54
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    .line 56
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v2, v1, :cond_2

    .line 80
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 79
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 81
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v7, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v7}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v8, v11, [Lcom/amap/api/maps2d/model/LatLng;

    aput-object v1, v8, v3

    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v1, v8, v10

    .line 82
    invoke-virtual {v7, v8}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkColor()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getBuslineWidth()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 81
    invoke-virtual {v6, v1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v1

    .line 84
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 88
    invoke-virtual {v6, v5}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u65b9\u5411:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 89
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\u9053\u8def:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 90
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getRoad()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    .line 91
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getInstruction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v12, v12}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    iget-boolean v6, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mNodeIconVisible:Z

    .line 92
    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    .line 93
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    .line 87
    invoke-virtual {v1, v5}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v1

    .line 94
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v5, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    .line 97
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkColor()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getBuslineWidth()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 57
    :cond_2
    if-eqz v2, :cond_3

    .line 67
    :goto_2
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 66
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v6

    .line 68
    add-int/lit8 v1, v2, 0x1

    .line 69
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v1}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 68
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 70
    invoke-virtual {v6, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 71
    iget-object v7, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v8, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v8}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v9, v11, [Lcom/amap/api/maps2d/model/LatLng;

    aput-object v6, v9, v3

    aput-object v1, v9, v10

    .line 73
    invoke-virtual {v8, v9}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkColor()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getBuslineWidth()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 72
    invoke-virtual {v7, v1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v1

    .line 76
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v7, v11, [Lcom/amap/api/maps2d/model/LatLng;

    iget-object v8, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v8, v7, v3

    aput-object v5, v7, v10

    .line 60
    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v6

    .line 61
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkColor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v6

    .line 62
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getBuslineWidth()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v6

    .line 59
    invoke-virtual {v1, v6}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v1

    .line 63
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method protected getBuslineWidth()F
    .locals 1

    .prologue
    const/high16 v0, 0x41900000    # 18.0f

    .line 111
    return v0
.end method

.method public bridge synthetic removeFromMap()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->removeFromMap()V

    return-void
.end method

.method public bridge synthetic setNodeIconVisibility(Z)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/amap/api/maps2d/overlay/b;->setNodeIconVisibility(Z)V

    return-void
.end method

.method public bridge synthetic zoomToSpan()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->zoomToSpan()V

    return-void
.end method
