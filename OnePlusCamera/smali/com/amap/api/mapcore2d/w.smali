.class public interface abstract Lcom/amap/api/mapcore2d/w;
.super Ljava/lang/Object;
.source "IAMapDelegate.java"


# virtual methods
.method public abstract R()V
.end method

.method public abstract S()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract T()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a()Landroid/os/Handler;
.end method

.method public abstract a(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/mapcore2d/ae;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/mapcore2d/af;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/mapcore2d/y;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(DDLcom/amap/api/mapcore2d/r;)V
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(IILcom/amap/api/mapcore2d/r;)V
.end method

.method public abstract a(Landroid/location/Location;)V
.end method

.method public abstract a(Lcom/amap/api/mapcore2d/l;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/mapcore2d/l;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/mapcore2d/l;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/LocationSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/mapcore2d/ax;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(DDLcom/amap/api/mapcore2d/ad;)V
.end method

.method public abstract b(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Lcom/amap/api/mapcore2d/l;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method

.method public abstract c()I
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract c(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract d()I
.end method

.method public abstract d(Z)V
.end method

.method public abstract e()Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract e(Z)V
.end method

.method public abstract f()F
.end method

.method public abstract f(Z)V
.end method

.method public abstract g()Lcom/amap/api/maps2d/model/CameraPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract g(Z)V
.end method

.method public abstract h()F
.end method

.method public abstract i()F
.end method

.method public abstract j()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract k()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract l()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract m()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract n()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract p()Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract q()Lcom/amap/api/mapcore2d/ak;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract r()Lcom/amap/api/mapcore2d/ag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract s()Lcom/amap/api/mapcore2d/bf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract v()V
.end method

.method public abstract w()F
.end method

.method public abstract y()V
.end method

.method public abstract z()V
.end method
