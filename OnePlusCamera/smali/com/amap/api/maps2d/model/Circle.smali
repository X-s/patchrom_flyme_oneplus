.class public final Lcom/amap/api/maps2d/model/Circle;
.super Ljava/lang/Object;
.source "Circle.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/x;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/x;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    .line 28
    return-void
.end method


# virtual methods
.method public contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 3

    .prologue
    const-string/jumbo v1, "contains"

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->b(Lcom/amap/api/maps2d/model/LatLng;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 349
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 351
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "equals"

    .line 364
    instance-of v0, p1, Lcom/amap/api/maps2d/model/Circle;

    if-eqz v0, :cond_0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    check-cast p1, Lcom/amap/api/maps2d/model/Circle;

    iget-object v2, p1, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    .line 375
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/x;->a(Lcom/amap/api/mapcore2d/ac;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 365
    :cond_0
    return v2

    .line 372
    :cond_1
    return v2

    .line 375
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 377
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getCenter()Lcom/amap/api/maps2d/model/LatLng;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "getCenter"

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->g()Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    return-object v2

    .line 99
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 101
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getFillColor()I
    .locals 3

    .prologue
    const-string/jumbo v1, "getFillColor"

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->k()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 251
    return v0

    .line 253
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 255
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, "getId"

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 62
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getRadius()D
    .locals 3

    .prologue
    const-string/jumbo v1, "getRadius"

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->h()D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 136
    return-wide v0

    .line 138
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 140
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeColor()I
    .locals 3

    .prologue
    const-string/jumbo v1, "getStrokeColor"

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->j()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 213
    return v0

    .line 215
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 217
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeWidth()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getStrokeWidth"

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->i()F
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

    const-string/jumbo v2, "Circle"

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

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->d()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 289
    return v0

    .line 291
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 293
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const-string/jumbo v1, "hashCode"

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 386
    return v0

    .line 388
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 390
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isVisible"

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 329
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 331
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .prologue
    const-string/jumbo v1, "remove"

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 39
    :cond_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 43
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setCenter(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setCenter"

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->a(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 78
    :cond_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 82
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setFillColor(I)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setFillColor"

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    return-void

    .line 232
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 236
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setRadius(D)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setRadius"

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/x;->a(D)V
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

    const-string/jumbo v2, "Circle"

    .line 121
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setStrokeColor(I)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setStrokeColor"

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-void

    .line 194
    :cond_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 198
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setStrokeWidth(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setStrokeWidth"

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->b(F)V
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

    const-string/jumbo v2, "Circle"

    .line 160
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setVisible(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setVisible"

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-void

    .line 308
    :cond_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 312
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZIndex(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setZIndex"

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-void

    .line 270
    :cond_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Circle"

    .line 274
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
