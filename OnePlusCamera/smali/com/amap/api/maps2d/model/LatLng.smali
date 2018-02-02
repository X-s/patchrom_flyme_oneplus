.class public final Lcom/amap/api/maps2d/model/LatLng;
.super Ljava/lang/Object;
.source "LatLng.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/f;

.field private static a:Ljava/text/DecimalFormat;


# instance fields
.field public final latitude:D

.field public final longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/amap/api/maps2d/model/f;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/f;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/LatLng;->CREATOR:Lcom/amap/api/maps2d/model/f;

    .line 28
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.000000"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/amap/api/maps2d/model/LatLng;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    const-wide v2, 0x4066800000000000L    # 180.0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x3f99800000000000L    # -180.0

    .line 39
    cmpg-double v0, v0, p3

    if-gtz v0, :cond_0

    cmpg-double v0, p3, v2

    if-gez v0, :cond_0

    .line 40
    invoke-static {p3, p4}, Lcom/amap/api/maps2d/model/LatLng;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    :goto_0
    const-wide v0, -0x3fa9800000000000L    # -90.0

    const-wide v2, 0x4056800000000000L    # 90.0

    .line 44
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/maps2d/model/LatLng;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 48
    return-void

    .line 42
    :cond_0
    sub-double v0, p3, v2

    rem-double/2addr v0, v4

    add-double/2addr v0, v4

    rem-double/2addr v0, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/amap/api/maps2d/model/LatLng;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    goto :goto_0
.end method

.method private static a(D)D
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/amap/api/maps2d/model/LatLng;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public clone()Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    .prologue
    .line 55
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/LatLng;->clone()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-eq p0, p1, :cond_0

    .line 79
    instance-of v2, p1, Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v2, :cond_1

    .line 81
    check-cast p1, Lcom/amap/api/maps2d/model/LatLng;

    .line 82
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 83
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_0
    return v0

    .line 78
    :cond_0
    return v0

    .line 80
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 61
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 62
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 63
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lat/lng: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 102
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 103
    return-void
.end method
