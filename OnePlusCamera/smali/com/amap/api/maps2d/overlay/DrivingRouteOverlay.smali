.class public Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;
.super Lcom/amap/api/maps2d/overlay/b;
.source "DrivingRouteOverlay.java"


# instance fields
.field private a:Lcom/amap/api/services/route/DrivePath;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field protected mPassByMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMap;Lcom/amap/api/services/route/DrivePath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/b;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->d:Z

    .line 47
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    .line 48
    iput-object p3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a:Lcom/amap/api/services/route/DrivePath;

    .line 49
    invoke-static {p4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 50
    invoke-static {p5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMap;Lcom/amap/api/services/route/DrivePath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/maps2d/AMap;",
            "Lcom/amap/api/services/route/DrivePath;",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/b;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->d:Z

    .line 68
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    .line 69
    iput-object p3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a:Lcom/amap/api/services/route/DrivePath;

    .line 70
    invoke-static {p4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 71
    invoke-static {p5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 72
    iput-object p6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    .line 74
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    return-void

    .line 137
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 138
    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 139
    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v3, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 140
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    const-string/jumbo v3, "\u9014\u7ecf\u70b9"

    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    iget-boolean v3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->d:Z

    .line 141
    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getPassedByBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 139
    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addToMap()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a:Lcom/amap/api/services/route/DrivePath;

    invoke-virtual {v0}, Lcom/amap/api/services/route/DrivePath;->getSteps()Ljava/util/List;

    move-result-object v4

    move v2, v3

    .line 81
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a()V

    .line 130
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->addStartAndEndMarker()V

    .line 131
    return-void

    .line 82
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/DriveStep;

    .line 84
    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 83
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    .line 85
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v2, v1, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 106
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 108
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v7, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v7}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v8, v11, [Lcom/amap/api/maps2d/model/LatLng;

    aput-object v1, v8, v3

    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v1, v8, v10

    .line 109
    invoke-virtual {v7, v8}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveColor()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBuslineWidth()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 108
    invoke-virtual {v6, v1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v1

    .line 111
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 116
    invoke-virtual {v6, v5}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u65b9\u5411:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 117
    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\u9053\u8def:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 118
    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getRoad()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    .line 119
    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getInstruction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    .line 120
    invoke-virtual {v5, v12, v12}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    iget-boolean v6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mNodeIconVisible:Z

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    .line 121
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v5

    .line 115
    invoke-virtual {v1, v5}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v1

    .line 122
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v5, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    .line 125
    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveColor()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBuslineWidth()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 123
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 86
    :cond_2
    if-eqz v2, :cond_3

    .line 93
    :goto_2
    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 92
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v6

    .line 94
    add-int/lit8 v1, v2, 0x1

    .line 95
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/DriveStep;

    invoke-virtual {v1}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 95
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 97
    invoke-virtual {v6, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 98
    iget-object v7, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v8, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v8}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v9, v11, [Lcom/amap/api/maps2d/model/LatLng;

    aput-object v6, v9, v3

    aput-object v1, v9, v10

    .line 100
    invoke-virtual {v8, v9}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveColor()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBuslineWidth()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v1

    .line 99
    invoke-virtual {v7, v1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v1

    .line 103
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v7, v11, [Lcom/amap/api/maps2d/model/LatLng;

    iget-object v8, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v8, v7, v3

    aput-object v5, v7, v10

    .line 88
    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveColor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v6

    .line 89
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBuslineWidth()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v6

    .line 87
    invoke-virtual {v1, v6}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v1

    .line 90
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method protected getBuslineWidth()F
    .locals 1

    .prologue
    const/high16 v0, 0x41900000    # 18.0f

    .line 180
    return v0
.end method

.method protected getLatLngBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v2

    .line 196
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 197
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 198
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    if-nez v1, :cond_1

    .line 205
    :cond_0
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 200
    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 200
    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 199
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected getPassedByBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->b:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "amap_throughpoint.png"

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBitDes(Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public removeFromMap()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->removeFromMap()V

    .line 154
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 154
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    .line 155
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    goto :goto_0
.end method

.method public bridge synthetic setNodeIconVisibility(Z)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/amap/api/maps2d/overlay/b;->setNodeIconVisibility(Z)V

    return-void
.end method

.method public setThroughPointIconVisibility(Z)V
    .locals 2

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->d:Z

    .line 167
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->postInvalidate()V

    .line 171
    return-void

    .line 167
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    .line 168
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/Marker;->setVisible(Z)V

    goto :goto_0
.end method

.method public bridge synthetic zoomToSpan()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->zoomToSpan()V

    return-void
.end method
