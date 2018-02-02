.class public final Lcom/amap/api/maps2d/model/CameraPosition;
.super Ljava/lang/Object;
.source "CameraPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/b;


# instance fields
.field public final bearing:F

.field public final isAbroad:Z

.field public final target:Lcom/amap/api/maps2d/model/LatLng;

.field public final tilt:F

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/amap/api/maps2d/model/b;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/b;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/CameraPosition;->CREATOR:Lcom/amap/api/maps2d/model/b;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_1

    .line 54
    :goto_0
    iput-object p1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    .line 55
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cj;->b(F)F

    move-result v1

    iput v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 56
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cj;->a(F)F

    move-result v1

    iput v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 57
    float-to-double v2, p4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    rem-float v1, p4, v6

    add-float p4, v1, v6

    :cond_0
    rem-float v1, p4, v6

    iput v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 58
    if-nez p1, :cond_2

    .line 61
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->isAbroad:Z

    .line 62
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, "CameraPosition"

    const-string/jumbo v2, "\u6784\u5efaCameraPosition\u65f6,\u4f4d\u7f6e(target)\u4e0d\u80fd\u4e3anull"

    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_2
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/ci;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->isAbroad:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>(Lcom/amap/api/maps2d/model/CameraPosition;)V

    return-object v0
.end method

.method public static final fromLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-eq p0, p1, :cond_2

    .line 125
    instance-of v2, p1, Lcom/amap/api/maps2d/model/CameraPosition;

    if-eqz v2, :cond_3

    .line 128
    check-cast p1, Lcom/amap/api/maps2d/model/CameraPosition;

    .line 129
    iget-object v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    .line 135
    :cond_1
    return v0

    .line 123
    :cond_2
    return v0

    .line 126
    :cond_3
    return v1

    .line 129
    :cond_4
    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 130
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 131
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 132
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 133
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 134
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 135
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x4

    .line 140
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "target"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "zoom"

    iget v3, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 141
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "tilt"

    iget v3, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 142
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "bearing"

    iget v3, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 143
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 140
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 68
    iget-object v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 69
    iget-object v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 70
    iget v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 71
    iget v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 72
    return-void
.end method
