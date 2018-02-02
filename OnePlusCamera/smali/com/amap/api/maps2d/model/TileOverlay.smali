.class public final Lcom/amap/api/maps2d/model/TileOverlay;
.super Ljava/lang/Object;
.source "TileOverlay.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/aj;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/aj;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    .line 27
    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->b()V

    .line 45
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    iget-object v1, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/aj;->a(Lcom/amap/api/mapcore2d/aj;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->d()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->f()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->e()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->a()V

    .line 36
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aj;->a(Z)V

    .line 85
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/mapcore2d/aj;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aj;->a(F)V

    .line 65
    return-void
.end method
