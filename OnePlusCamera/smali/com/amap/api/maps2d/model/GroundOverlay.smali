.class public final Lcom/amap/api/maps2d/model/GroundOverlay;
.super Ljava/lang/Object;
.source "GroundOverlay.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/y;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/y;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "equals"

    .line 395
    instance-of v0, p1, Lcom/amap/api/maps2d/model/GroundOverlay;

    if-eqz v0, :cond_0

    .line 398
    :try_start_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 401
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 396
    :cond_0
    return v2
.end method

.method public getBearing()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getBearing"

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->m()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 270
    return v0

    .line 272
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 274
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "getBounds"

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->k()Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    return-object v2

    .line 234
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 236
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getHeight()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getHeight"

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->j()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 194
    return v0

    .line 196
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 198
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, "getId"

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 64
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "getPosition"

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->h()Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    return-object v2

    .line 100
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 102
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getTransparency()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getTransparency"

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->n()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 384
    return v0

    .line 386
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 388
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getWidth()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getWidth"

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->i()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 175
    return v0

    .line 177
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 179
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getZIndex"

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->d()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 308
    return v0

    .line 310
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 312
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 408
    return v0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isVisible"

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 346
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 348
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 350
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .prologue
    const-string/jumbo v1, "remove"

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 41
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 45
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setBearing(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setBearing"

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->c(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    return-void

    .line 251
    :cond_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 255
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setDimensions(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setDimensions"

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 117
    :cond_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 121
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setDimensions(FF)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setDimensions"

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/y;->a(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-void

    .line 156
    :cond_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 160
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setImage(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setImage"

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 136
    :cond_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 140
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setPosition"

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 79
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 83
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPositionFromBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setPositionFromBounds"

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-void

    .line 213
    :cond_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 217
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setTransparency(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setTransparency"

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->d(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    return-void

    .line 365
    :cond_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 369
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setVisible(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setVisible"

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-void

    .line 327
    :cond_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 331
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZIndex(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setZIndex"

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    return-void

    .line 289
    :cond_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlay"

    .line 293
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
