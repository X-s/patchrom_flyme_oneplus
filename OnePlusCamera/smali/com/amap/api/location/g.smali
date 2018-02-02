.class public Lcom/amap/api/location/g;
.super Ljava/lang/Object;
.source "RequestLocationEntity.java"


# instance fields
.field a:J

.field public b:Lcom/amap/api/location/AMapLocationListener;

.field c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/amap/api/location/g;->a:J

    .line 17
    iput-object p4, p0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    .line 18
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/g;->c:Ljava/lang/Boolean;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    if-eq p0, p1, :cond_1

    .line 35
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 39
    check-cast p1, Lcom/amap/api/location/g;

    .line 40
    iget-object v0, p0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    iget-object v1, p1, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    :cond_0
    return v3

    .line 34
    :cond_1
    return v3

    .line 36
    :cond_2
    return v2

    .line 38
    :cond_3
    return v2

    .line 41
    :cond_4
    iget-object v0, p1, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v0, :cond_0

    .line 42
    return v2

    .line 44
    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/g;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 28
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 26
    goto :goto_0
.end method
