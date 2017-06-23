.class public final Landroid/telephony/CellIdentityCdma;
.super Ljava/lang/Object;
.source "CellIdentityCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private final mBasestationId:I

.field private final mLatitude:I

.field private final mLongitude:I

.field private final mNetworkId:I

.field private final mSystemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Landroid/telephony/CellIdentityCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 59
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 60
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 61
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 62
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 63
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "nid"    # I
    .param p2, "sid"    # I
    .param p3, "bid"    # I
    .param p4, "lon"    # I
    .param p5, "lat"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 79
    iput p2, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 80
    iput p3, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 81
    iput p4, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 82
    iput p5, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityCdma$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellIdentityCdma$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityCdma;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityCdma;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 87
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 88
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 89
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 90
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 91
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityCdma;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/telephony/CellIdentityCdma;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    if-ne p0, p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    instance-of v3, p1, Landroid/telephony/CellIdentityCdma;

    if-nez v3, :cond_2

    move v1, v2

    .line 152
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 155
    check-cast v0, Landroid/telephony/CellIdentityCdma;

    .line 156
    .local v0, "o":Landroid/telephony/CellIdentityCdma;
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getBasestationId()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    return v0
.end method

.method public getLatitude()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityCdma:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, " mSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, " mBasestationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, " mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, " mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 186
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method
