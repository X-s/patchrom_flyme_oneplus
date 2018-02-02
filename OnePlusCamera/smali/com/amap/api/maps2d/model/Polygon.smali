.class public final Lcom/amap/api/maps2d/model/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/ae;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ae;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    .line 42
    return-void
.end method


# virtual methods
.method public contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 3

    .prologue
    const-string/jumbo v1, "contains"

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(Lcom/amap/api/maps2d/model/LatLng;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 320
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 322
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "equeals"

    .line 335
    instance-of v0, p1, Lcom/amap/api/maps2d/model/Polygon;

    if-eqz v0, :cond_0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    check-cast p1, Lcom/amap/api/maps2d/model/Polygon;

    iget-object v2, p1, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    .line 347
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/ae;->a(Lcom/amap/api/mapcore2d/ac;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 336
    :cond_0
    return v3

    .line 344
    :cond_1
    return v3

    .line 347
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 349
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return v3
.end method

.method public getFillColor()I
    .locals 3

    .prologue
    const-string/jumbo v1, "getFillColor"

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 224
    return v0

    .line 226
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 228
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "getId"

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->c()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    return-object v2

    .line 74
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 76
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "getPoints"

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->i()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    return-object v2

    .line 112
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 114
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeColor()I
    .locals 3

    .prologue
    const-string/jumbo v1, "getStrokeColor"

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->j()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 186
    return v0

    .line 188
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 190
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getStrokeWidth()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getStrokeWidth"

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->g()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 148
    return v0

    .line 150
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 152
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getZIndex"

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->d()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 262
    return v0

    .line 264
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 266
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const-string/jumbo v1, "hashCode"

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 359
    return v0

    .line 361
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 363
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 299
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .prologue
    const-string/jumbo v1, "remove"

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 53
    :cond_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 57
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setFillColor(I)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setFillColor"

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 205
    :cond_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 209
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "setPoints"

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 91
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 95
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setStrokeColor(I)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setStrokeColor"

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-void

    .line 167
    :cond_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 171
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setStrokeWidth(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setStrokeWidth"

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 129
    :cond_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 133
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setVisible(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setVisible"

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-void

    .line 281
    :cond_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 285
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZIndex(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setZIndex"

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return-void

    .line 243
    :cond_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polygon"

    .line 247
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
