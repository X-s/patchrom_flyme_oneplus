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
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/high16 v8, -0x80000000

    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 112
    .local v0, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 113
    .local v2, "longitude":D
    const-wide v4, 0x4056800000000000L    # 90.0

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
    mul-double v4, v0, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->latitudeKey:I

    .line 116
    mul-double v4, v2, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->longitudeKey:I

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
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 129
    instance-of v2, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 131
    check-cast v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;

    .line 132
    .local v0, "key":Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;
    iget v2, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->latitudeKey:I

    iget v3, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->latitudeKey:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->longitudeKey:I

    iget v3, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;->longitudeKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 134
    .end local v0    # "key":Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;
    :cond_0
    return v1
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
