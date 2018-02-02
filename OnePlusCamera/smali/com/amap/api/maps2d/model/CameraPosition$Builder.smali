.class public final Lcom/amap/api/maps2d/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "CameraPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps2d/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps2d/model/LatLng;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iget-object v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 161
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 162
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 163
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    .line 164
    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->d:F

    .line 206
    return-object p0
.end method

.method public build()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v1, "build"

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v2, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    iget v3, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->b:F

    iget v4, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->c:F

    iget v5, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->d:F

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "CameraPosition"

    const-string/jumbo v2, "target is null"

    .line 218
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-object v6

    .line 221
    :catch_0
    move-exception v0

    const-string/jumbo v2, "CameraPosition"

    .line 224
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v6
.end method

.method public target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    .line 173
    return-object p0
.end method

.method public tilt(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->c:F

    .line 195
    return-object p0
.end method

.method public zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->b:F

    .line 184
    return-object p0
.end method
