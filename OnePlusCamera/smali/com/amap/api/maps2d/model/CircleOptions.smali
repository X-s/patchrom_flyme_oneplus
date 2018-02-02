.class public final Lcom/amap/api/maps2d/model/CircleOptions;
.super Ljava/lang/Object;
.source "CircleOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/c;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps2d/model/LatLng;

.field private c:D

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/amap/api/maps2d/model/c;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/c;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/CircleOptions;->CREATOR:Lcom/amap/api/maps2d/model/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->c:D

    const/high16 v0, 0x41200000    # 10.0f

    .line 20
    iput v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->d:F

    const/high16 v0, -0x1000000

    .line 21
    iput v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->e:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->f:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->g:F

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->h:Z

    return-void
.end method


# virtual methods
.method public center(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 54
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    return v0
.end method

.method public fillColor(I)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->f:I

    .line 102
    return-object p0
.end method

.method public getCenter()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->f:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->c:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->e:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->d:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->g:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->h:Z

    return v0
.end method

.method public radius(D)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->c:D

    .line 66
    return-object p0
.end method

.method public strokeColor(I)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->e:I

    .line 90
    return-object p0
.end method

.method public strokeWidth(F)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->d:F

    .line 78
    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->h:Z

    .line 126
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    iget-object v2, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v2, :cond_0

    .line 32
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 33
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/CircleOptions;->c:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget v1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->d:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    iget v1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->e:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->f:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->g:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 38
    iget-boolean v1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->h:Z

    if-nez v1, :cond_1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-object v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void

    :cond_0
    const-string/jumbo v2, "lat"

    .line 29
    iget-object v3, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v2, "lng"

    .line 30
    iget-object v3, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 38
    goto :goto_1
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->g:F

    .line 114
    return-object p0
.end method
