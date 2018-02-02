.class public final Lcom/amap/api/maps2d/UiSettings;
.super Ljava/lang/Object;
.source "UiSettings.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/ak;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ak;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    .line 20
    return-void
.end method


# virtual methods
.method public getLogoPosition()I
    .locals 3

    .prologue
    const-string/jumbo v1, "getLogoPosition"

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->g()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 277
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZoomPosition()I
    .locals 3

    .prologue
    const-string/jumbo v1, "getZoomPosition"

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 292
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isCompassEnabled()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isCompassEnabled"

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 213
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isMyLocationButtonEnabled()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isMyLocationButtonEnabled"

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 229
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isScaleControlsEnabled()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isScaleControlsEnabled"

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 181
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isScrollGesturesEnabled()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isScrollGestureEnabled"

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 245
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isZoomControlsEnabled()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isZoomControlsEnabled"

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->b()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 197
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isZoomGesturesEnabled()Z
    .locals 3

    .prologue
    const-string/jumbo v1, "isZoomGesturesEnabled"

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 261
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setAllGesturesEnabled"

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->g(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-void

    .line 133
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 131
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setCompassEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setCompassEnabled"

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 66
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 64
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setLogoPosition(I)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setLogoPosition"

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 150
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 148
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setMyLocationButtonEnabled"

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->d(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 83
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 81
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setScaleControlsEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setScaleControlsEnabled"

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 34
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 32
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setScrollGesturesEnabled"

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 100
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 98
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setZoomControlsEnabled"

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 50
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 48
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setZoomGesturesEnabled"

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->f(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    .line 117
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 115
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZoomPosition(I)V
    .locals 3

    .prologue
    const-string/jumbo v1, "setZoomPosition"

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 167
    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    .line 165
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
