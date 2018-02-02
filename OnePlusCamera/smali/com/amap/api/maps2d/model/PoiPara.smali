.class public Lcom/amap/api/maps2d/model/PoiPara;
.super Ljava/lang/Object;
.source "PoiPara.java"


# instance fields
.field private a:Lcom/amap/api/maps2d/model/LatLng;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenter()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PoiPara;->a:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PoiPara;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setCenter(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amap/api/maps2d/model/PoiPara;->a:Lcom/amap/api/maps2d/model/LatLng;

    .line 46
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amap/api/maps2d/model/PoiPara;->b:Ljava/lang/String;

    .line 63
    return-void
.end method
