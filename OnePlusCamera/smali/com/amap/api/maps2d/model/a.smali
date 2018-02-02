.class Lcom/amap/api/maps2d/model/a;
.super Ljava/lang/Object;
.source "BitmapDescriptorCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 11
    new-instance v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V

    const-class v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    .line 16
    return-object v1
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 21
    new-array v0, p1, [Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/a;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/a;->a(I)[Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method
