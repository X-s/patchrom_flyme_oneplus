.class public Lcom/amap/api/maps2d/model/RoutePara;
.super Ljava/lang/Object;
.source "RoutePara.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/amap/api/maps2d/model/LatLng;

.field private d:Lcom/amap/api/maps2d/model/LatLng;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->a:I

    .line 33
    iput v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->b:I

    return-void
.end method


# virtual methods
.method public getDrivingRouteStyle()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->a:I

    return v0
.end method

.method public getEndName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->d:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getStartName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPoint()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->c:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getTransitRouteStyle()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->b:I

    return v0
.end method

.method public setDrivingRouteStyle(I)V
    .locals 1

    .prologue
    .line 68
    if-gez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x9

    .line 68
    if-ge p1, v0, :cond_0

    .line 69
    iput p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->a:I

    goto :goto_0
.end method

.method public setEndName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->f:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setEndPoint(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->d:Lcom/amap/api/maps2d/model/LatLng;

    .line 123
    return-void
.end method

.method public setStartName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->e:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setStartPoint(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->c:Lcom/amap/api/maps2d/model/LatLng;

    .line 106
    return-void
.end method

.method public setTransitRouteStyle(I)V
    .locals 1

    .prologue
    .line 87
    if-gez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x6

    .line 87
    if-ge p1, v0, :cond_0

    .line 88
    iput p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->b:I

    goto :goto_0
.end method
