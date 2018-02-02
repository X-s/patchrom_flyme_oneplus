.class final Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;
.super Ljava/lang/Object;
.source "LocationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/LocationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationCacheKey"
.end annotation


# instance fields
.field public final latitudeKey:I

.field public final longitudeKey:I


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 9

    .prologue
    const/high16 v8, -0x80000000

    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 112
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    .line 113
    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    .line 115
    mul-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->latitudeKey:I

    .line 116
    mul-double v0, v2, v6

    double-to-int v0, v0

    iput v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->longitudeKey:I

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iput v8, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->latitudeKey:I

    .line 121
    iput v8, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->longitudeKey:I

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    instance-of v0, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;

    if-nez v0, :cond_0

    .line 134
    return v2

    .line 131
    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;

    .line 132
    iget v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->latitudeKey:I

    iget v1, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->latitudeKey:I

    if-eq v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->longitudeKey:I

    iget v1, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->longitudeKey:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 141
    iget v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->latitudeKey:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->longitudeKey:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
