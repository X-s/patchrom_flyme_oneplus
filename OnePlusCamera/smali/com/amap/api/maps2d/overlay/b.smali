.class Lcom/amap/api/maps2d/overlay/b;
.super Ljava/lang/Object;
.source "RouteOverlay.java"


# instance fields
.field private a:Lcom/amap/api/maps2d/model/Marker;

.field protected allPolyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/maps2d/model/Marker;

.field private c:Landroid/content/Context;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field protected endPoint:Lcom/amap/api/maps2d/model/LatLng;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/content/res/AssetManager;

.field protected mAMap:Lcom/amap/api/maps2d/AMap;

.field protected mNodeIconVisible:Z

.field protected startPoint:Lcom/amap/api/maps2d/model/LatLng;

.field protected stationMarkers:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->stationMarkers:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->allPolyLines:Ljava/util/List;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/overlay/b;->mNodeIconVisible:Z

    .line 41
    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/b;->c:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->i:Landroid/content/res/AssetManager;

    .line 43
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 94
    :goto_2
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 98
    :goto_3
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 102
    :goto_4
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    iput-object v1, p0, Lcom/amap/api/maps2d/overlay/b;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    iput-object v1, p0, Lcom/amap/api/maps2d/overlay/b;->e:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    iput-object v1, p0, Lcom/amap/api/maps2d/overlay/b;->f:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    iput-object v1, p0, Lcom/amap/api/maps2d/overlay/b;->g:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    iput-object v1, p0, Lcom/amap/api/maps2d/overlay/b;->h:Landroid/graphics/Bitmap;

    goto :goto_4
.end method


# virtual methods
.method protected addStartAndEndMarker()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/b;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 179
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/b;->getStartBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    const-string/jumbo v2, "\u8d77\u70b9"

    .line 180
    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->a:Lcom/amap/api/maps2d/model/Marker;

    .line 183
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/b;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 184
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/b;->getEndBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    const-string/jumbo v2, "\u7ec8\u70b9"

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->b:Lcom/amap/api/maps2d/model/Marker;

    .line 187
    return-void
.end method

.method protected getBitDes(Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    .prologue
    const-string/jumbo v1, "getBitDes"

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->i:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 166
    sget v2, Lcom/amap/api/mapcore2d/p;->a:F

    invoke-static {p1, v2}, Lcom/amap/api/maps2d/overlay/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 168
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :goto_0
    invoke-static {p1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    const-string/jumbo v2, "RouteOverlay"

    .line 170
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    const-string/jumbo v2, "RouteOverlay"

    .line 172
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getBusBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->f:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "amap_bus.png"

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/b;->getBitDes(Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getBusColor()I
    .locals 1

    .prologue
    const-string/jumbo v0, "#537edc"

    .line 210
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getDriveBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->h:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "amap_car.png"

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/b;->getBitDes(Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getDriveColor()I
    .locals 1

    .prologue
    const-string/jumbo v0, "#537edc"

    .line 214
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getEndBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->e:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "amap_end.png"

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/b;->getBitDes(Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getLatLngBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 6

    .prologue
    .line 199
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/b;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/b;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 201
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/b;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/b;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 202
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method protected getStartBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->d:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "amap_start.png"

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/b;->getBitDes(Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getWalkBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->g:Landroid/graphics/Bitmap;

    const-string/jumbo v1, "amap_man.png"

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/b;->getBitDes(Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getWalkColor()I
    .locals 1

    .prologue
    const-string/jumbo v0, "#6db74d"

    .line 206
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeFromMap()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->a:Lcom/amap/api/maps2d/model/Marker;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->b:Lcom/amap/api/maps2d/model/Marker;

    if-nez v0, :cond_1

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->stationMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->allPolyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    invoke-direct {p0}, Lcom/amap/api/maps2d/overlay/b;->a()V

    .line 65
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->a:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->b:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    .line 59
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    goto :goto_2

    .line 61
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Polyline;

    .line 62
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Polyline;->remove()V

    goto :goto_3
.end method

.method public setNodeIconVisibility(Z)V
    .locals 2

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/amap/api/maps2d/overlay/b;->mNodeIconVisible:Z

    .line 75
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->stationMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->mAMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->postInvalidate()V

    .line 79
    return-void

    .line 75
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    .line 76
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/Marker;->setVisible(Z)V

    goto :goto_0
.end method

.method public zoomToSpan()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/b;->mAMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/b;->getLatLngBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/b;->mAMap:Lcom/amap/api/maps2d/AMap;

    const/16 v2, 0x32

    invoke-static {v0, v2}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    goto :goto_0

    .line 192
    :cond_2
    return-void
.end method
