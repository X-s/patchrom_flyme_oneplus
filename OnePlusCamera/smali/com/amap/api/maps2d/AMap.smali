.class public final Lcom/amap/api/maps2d/AMap;
.super Ljava/lang/Object;
.source "AMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/AMap$CancelableCallback;,
        Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;,
        Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;,
        Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;,
        Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;,
        Lcom/amap/api/maps2d/AMap$OnMapClickListener;,
        Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;,
        Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;,
        Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;,
        Lcom/amap/api/maps2d/AMap$OnMapTouchListener;,
        Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;,
        Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;,
        Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;
    }
.end annotation


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh_cn"

.field public static final ENGLISH:Ljava/lang/String; = "en"

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/w;

.field private b:Lcom/amap/api/maps2d/UiSettings;

.field private c:Lcom/amap/api/maps2d/Projection;


# direct methods
.method protected constructor <init>(Lcom/amap/api/mapcore2d/w;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    .line 284
    return-void
.end method

.method private a()Lcom/amap/api/mapcore2d/w;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "2.9.2"

    .line 675
    return-object v0
.end method


# virtual methods
.method public final addCircle(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/maps2d/model/Circle;
    .locals 3

    .prologue
    const-string/jumbo v1, "addCircle"

    .line 476
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/Circle;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/x;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/Circle;-><init>(Lcom/amap/api/mapcore2d/x;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 478
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addGroundOverlay(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/maps2d/model/GroundOverlay;
    .locals 3

    .prologue
    const-string/jumbo v1, "addGroundOverlay"

    .line 531
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/GroundOverlay;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/mapcore2d/y;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/GroundOverlay;-><init>(Lcom/amap/api/mapcore2d/y;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 534
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .locals 3

    .prologue
    const-string/jumbo v1, "addMarker"

    .line 515
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 517
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addPolygon(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/maps2d/model/Polygon;
    .locals 3

    .prologue
    const-string/jumbo v1, "addPolygon"

    .line 493
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/Polygon;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/Polygon;-><init>(Lcom/amap/api/mapcore2d/ae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 495
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 3

    .prologue
    const-string/jumbo v1, "addPolyline"

    .line 443
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/Polyline;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/mapcore2d/af;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/Polyline;-><init>(Lcom/amap/api/mapcore2d/af;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 445
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addText(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    .locals 3

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMap"

    const-string/jumbo v2, "addText"

    .line 460
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addTileOverlay(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    .locals 3

    .prologue
    const-string/jumbo v1, "addtileOverlay"

    .line 548
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 550
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "animateCamera"

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 358
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/w;->b(Lcom/amap/api/mapcore2d/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    return-void

    .line 363
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 361
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps2d/CameraUpdate;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 4

    .prologue
    const-string/jumbo v1, "animateCamera"

    const-wide/16 v2, 0x0

    .line 406
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "AMap"

    const-string/jumbo v2, "durationMs must be positive"

    .line 407
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 410
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 409
    invoke-interface {v0, v2, p2, p3, p4}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 413
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps2d/CameraUpdate;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "animateCamera"

    .line 381
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 382
    invoke-interface {v0, v2, p2}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    return-void

    .line 388
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 386
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final clear()V
    .locals 3

    .prologue
    const-string/jumbo v1, "clear"

    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->k()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 567
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 570
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 3

    .prologue
    const-string/jumbo v1, "getCameraPosition"

    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->g()Lcom/amap/api/maps2d/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 301
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMapScreenMarkers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "getMapScreenaMarkers"

    .line 1010
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->S()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 1012
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getMapScreenShot(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V
    .locals 1

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V

    .line 980
    invoke-virtual {p0}, Lcom/amap/api/maps2d/AMap;->invalidate()V

    .line 981
    return-void
.end method

.method public final getMapType()I
    .locals 3

    .prologue
    const-string/jumbo v1, "getMapType"

    .line 583
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->l()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 585
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMaxZoomLevel()F
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->h()F

    move-result v0

    return v0
.end method

.method public final getMinZoomLevel()F
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->i()F

    move-result v0

    return v0
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 3

    .prologue
    const-string/jumbo v1, "getMyLocation"

    .line 707
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->p()Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 709
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getProjection()Lcom/amap/api/maps2d/Projection;
    .locals 3

    .prologue
    const-string/jumbo v1, "getProjection"

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;

    if-eqz v0, :cond_0

    .line 780
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;

    return-object v0

    .line 777
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/Projection;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    .line 778
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/w;->r()Lcom/amap/api/mapcore2d/ag;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/Projection;-><init>(Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 782
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getScalePerPixel()F
    .locals 1

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->w()F

    move-result v0

    return v0
.end method

.method public final getUiSettings()Lcom/amap/api/maps2d/UiSettings;
    .locals 3

    .prologue
    const-string/jumbo v1, "getUiSettings"

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;

    if-eqz v0, :cond_0

    .line 759
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;

    return-object v0

    .line 756
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/UiSettings;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    .line 757
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/w;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/UiSettings;-><init>(Lcom/amap/api/mapcore2d/ak;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 761
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/amap/api/maps2d/AMap;->postInvalidate()V

    .line 1033
    return-void
.end method

.method public final isMyLocationEnabled()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isMyLocationEnabled"

    .line 663
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->n()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 665
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isTrafficEnabled()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isTrafficEnable"

    .line 631
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->m()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 633
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "moveCamera"

    .line 340
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 341
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 340
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    return-void

    .line 345
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 343
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->R()V

    .line 1024
    return-void
.end method

.method public removecache()V
    .locals 3

    .prologue
    const-string/jumbo v1, "removecache"

    .line 1059
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->T()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    return-void

    .line 1063
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 1061
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public removecache(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "removecache"

    .line 1075
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    return-void

    .line 1079
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 1077
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setInfoWindowAdapter(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setInfoWindowAdapter"

    .line 934
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    return-void

    .line 938
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 936
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLocationSource(Lcom/amap/api/maps2d/LocationSource;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setLocationSource"

    .line 723
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/LocationSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    return-void

    .line 727
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 725
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setMapLanguage(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setMapLanguage"

    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    return-void

    .line 1048
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 1046
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMapType(I)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setMapType"

    .line 599
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    return-void

    .line 603
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 601
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setMyLocationEnabled"

    .line 690
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    return-void

    .line 694
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 692
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationRotateAngle(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setMyLocationRoteteAngle"

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    return-void

    .line 619
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 617
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationStyle(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setMyLocationStyle"

    .line 739
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    return-void

    .line 743
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 741
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnCameraChangeListener(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnCameraChangeListener"

    .line 797
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    return-void

    .line 801
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 799
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnInfoWindowClickListener(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnInfoWindowClickListener"

    .line 915
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    return-void

    .line 919
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 917
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnMapClickListener"

    .line 813
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    return-void

    .line 817
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 815
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLoadedListener(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnMapLoadedListener"

    .line 950
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    return-void

    .line 954
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 952
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLongClickListener(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnMapLongClickListener"

    .line 864
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    return-void

    .line 868
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 866
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapTouchListener(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnMapTouchListener"

    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    return-void

    .line 833
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 831
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerClickListener(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnMarkerClickListener"

    .line 881
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    return-void

    .line 885
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 883
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerDragListener(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnMarkerDragListener"

    .line 898
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    return-void

    .line 902
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 900
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMyLocationChangeListener(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setOnMyLocaitonChangeListener"

    .line 846
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    return-void

    .line 850
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 848
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setTrafficEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setTradficEnabled"

    .line 647
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    return-void

    .line 651
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 649
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final stopAnimation()V
    .locals 3

    .prologue
    const-string/jumbo v1, "stopAnimation"

    .line 426
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    return-void

    .line 430
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    .line 428
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
