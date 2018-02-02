.class public final Lcom/amap/api/maps2d/model/PolygonOptions;
.super Ljava/lang/Object;
.source "PolygonOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/h;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/amap/api/maps2d/model/h;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/h;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/PolygonOptions;->CREATOR:Lcom/amap/api/maps2d/model/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x1000000

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 24
    iput v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->c:F

    .line 25
    iput v1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->d:I

    .line 26
    iput v1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->e:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->f:F

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->g:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object p0
.end method

.method public varargs add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps2d/model/PolygonOptions;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 97
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    return-object p0

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 99
    iget-object v2, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    return v0
.end method

.method public fillColor(I)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->e:I

    .line 145
    return-object p0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->e:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->d:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->f:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->g:Z

    return v0
.end method

.method public strokeColor(I)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->d:I

    .line 134
    return-object p0
.end method

.method public strokeWidth(F)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->c:F

    .line 123
    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->g:Z

    .line 167
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 59
    iget v1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->c:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 60
    iget v1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->d:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->e:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->f:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 63
    iget-boolean v1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->g:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->f:F

    .line 156
    return-object p0
.end method
