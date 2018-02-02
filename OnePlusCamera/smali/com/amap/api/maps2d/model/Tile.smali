.class public final Lcom/amap/api/maps2d/model/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/j;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field public final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/amap/api/maps2d/model/j;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/j;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/Tile;->CREATOR:Lcom/amap/api/maps2d/model/j;

    return-void
.end method

.method constructor <init>(III[B)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/amap/api/maps2d/model/Tile;->a:I

    .line 39
    iput p2, p0, Lcom/amap/api/maps2d/model/Tile;->b:I

    .line 40
    iput p3, p0, Lcom/amap/api/maps2d/model/Tile;->c:I

    .line 41
    iput-object p4, p0, Lcom/amap/api/maps2d/model/Tile;->data:[B

    .line 42
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amap/api/maps2d/model/Tile;-><init>(III[B)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/amap/api/maps2d/model/Tile;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/amap/api/maps2d/model/Tile;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/amap/api/maps2d/model/Tile;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Tile;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 67
    return-void
.end method
