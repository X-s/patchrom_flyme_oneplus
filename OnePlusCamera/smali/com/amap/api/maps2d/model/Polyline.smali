.class public Lcom/amap/api/maps2d/model/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/af;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/af;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "equals"

    .line 338
    instance-of v0, p1, Lcom/amap/api/maps2d/model/Polyline;

    if-eqz v0, :cond_0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    check-cast p1, Lcom/amap/api/maps2d/model/Polyline;

    iget-object v2, p1, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    .line 349
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/af;->a(Lcom/amap/api/mapcore2d/ac;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 339
    :cond_0
    return v2

    .line 346
    :cond_1
    return v2

    .line 349
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 351
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getColor()I
    .locals 3

    .prologue
    const-string/jumbo v1, "getColor"

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 187
    return v0

    .line 189
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 191
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, "getId"

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

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

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->i()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    return-object v2

    .line 113
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 115
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getWidth()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getWidth"

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->g()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 149
    return v0

    .line 151
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 153
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 3

    .prologue
    const-string/jumbo v1, "getZIndex"

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->d()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 225
    return v0

    .line 227
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 229
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const-string/jumbo v1, "hashCode"

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 361
    return v0

    .line 363
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 365
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isDottedLine()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->j()Z

    move-result v0

    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->k()Z

    move-result v0

    return v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isVisible"

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 265
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 267
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
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
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->b()V
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

    const-string/jumbo v2, "Polyline"

    .line 57
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setColor(I)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setColor"

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-void

    .line 168
    :cond_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 172
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setDottedLine(Z)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->b(Z)V

    .line 319
    return-void

    .line 316
    :cond_0
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setGeodesic"

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->k()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 293
    :goto_0
    return-void

    .line 282
    :cond_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 286
    iget-object v2, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/af;->c(Z)V

    .line 287
    invoke-virtual {p0, v0}, Lcom/amap/api/maps2d/model/Polyline;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 290
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
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
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->a(Ljava/util/List;)V
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

    const-string/jumbo v2, "Polyline"

    .line 95
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setVisible(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setVisible"

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return-void

    .line 244
    :cond_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 248
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setWidth(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setWidth"

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 130
    :cond_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 134
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZIndex(F)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setZIndex"

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 206
    :cond_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Polyline"

    .line 210
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
