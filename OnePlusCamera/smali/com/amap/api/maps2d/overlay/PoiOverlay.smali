.class public Lcom/amap/api/maps2d/overlay/PoiOverlay;
.super Ljava/lang/Object;
.source "PoiOverlay.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/maps2d/AMap;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/maps2d/AMap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps2d/AMap;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->c:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->b:Lcom/amap/api/maps2d/AMap;

    .line 34
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    .line 35
    return-void
.end method

.method private a()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 8

    .prologue
    .line 76
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 81
    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 78
    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(I)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 8

    .prologue
    .line 85
    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    .line 89
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 86
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 90
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/overlay/PoiOverlay;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/overlay/PoiOverlay;->getSnippet(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 91
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/overlay/PoiOverlay;->getBitmapDescriptor(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addToMap()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 48
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->b:Lcom/amap/api/maps2d/AMap;

    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a(I)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v1

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/Marker;->setObject(Ljava/lang/Object;)V

    .line 46
    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getBitmapDescriptor(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    return-object v0
.end method

.method public getPoiIndex(Lcom/amap/api/maps2d/model/Marker;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, -0x1

    .line 119
    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_1
    return v1
.end method

.method public getPoiItem(I)Lcom/amap/api/services/core/PoiItem;
    .locals 1

    .prologue
    .line 130
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 131
    return-object v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    return-object v0
.end method

.method protected getSnippet(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeFromMap()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 56
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    .line 57
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    goto :goto_0
.end method

.method public zoomToSpan()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->b:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_2

    .line 70
    invoke-direct {p0}, Lcom/amap/api/maps2d/overlay/PoiOverlay;->a()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/PoiOverlay;->b:Lcom/amap/api/maps2d/AMap;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method
