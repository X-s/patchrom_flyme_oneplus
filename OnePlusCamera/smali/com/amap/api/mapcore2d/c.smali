.class Lcom/amap/api/mapcore2d/c;
.super Ljava/lang/Object;
.source "AMapOnLocationChangedListener.java"

# interfaces
.implements Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;


# instance fields
.field a:Landroid/location/Location;

.field private b:Lcom/amap/api/mapcore2d/w;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/w;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore2d/c;->b:Lcom/amap/api/mapcore2d/w;

    .line 19
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "onLocationChanged"

    .line 26
    iput-object p1, p0, Lcom/amap/api/mapcore2d/c;->a:Landroid/location/Location;

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapOnLocationChangedListener"

    .line 33
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
