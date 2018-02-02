.class public Lcom/amap/api/maps2d/model/MyLocationStyle;
.super Ljava/lang/Object;
.source "MyLocationStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private a:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->b:F

    .line 15
    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->c:F

    const/16 v0, 0x64

    const/16 v1, 0xb4

    .line 16
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->d:I

    const/16 v0, 0xff

    const/16 v1, 0xdc

    .line 17
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->e:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->f:F

    .line 21
    return-void
.end method


# virtual methods
.method public anchor(FF)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->b:F

    .line 46
    iput p2, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->c:F

    .line 47
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    return v0
.end method

.method public getAnchorU()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->b:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->c:F

    return v0
.end method

.method public getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->a:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object v0
.end method

.method public getRadiusFillColor()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->d:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->e:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->f:F

    return v0
.end method

.method public myLocationIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->a:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 32
    return-object p0
.end method

.method public radiusFillColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->d:I

    .line 59
    return-object p0
.end method

.method public strokeColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->e:I

    .line 71
    return-object p0
.end method

.method public strokeWidth(F)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->f:F

    .line 83
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->a:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 156
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 157
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 158
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 161
    return-void
.end method
