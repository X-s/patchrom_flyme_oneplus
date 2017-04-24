.class public final Lcom/vzw/nfc/RouteEntry;
.super Ljava/lang/Object;
.source "RouteEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/nfc/RouteEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAid:[B

.field mAllowed:Z

.field mLocation:I

.field mPowerState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/vzw/nfc/RouteEntry$1;

    invoke-direct {v0}, Lcom/vzw/nfc/RouteEntry$1;-><init>()V

    sput-object v0, Lcom/vzw/nfc/RouteEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 3
    .param p1, "Aid"    # [B
    .param p2, "PowerState"    # I
    .param p3, "Location"    # I
    .param p4, "allowed"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/vzw/nfc/RouteEntry;->mAid:[B

    .line 40
    iput p2, p0, Lcom/vzw/nfc/RouteEntry;->mPowerState:I

    .line 41
    iput p3, p0, Lcom/vzw/nfc/RouteEntry;->mLocation:I

    .line 42
    iput-boolean p4, p0, Lcom/vzw/nfc/RouteEntry;->mAllowed:Z

    .line 43
    const-string v0, "RouteEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor mPowerState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "RouteEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor mPowerState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/nfc/RouteEntry;->mPowerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getAid()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vzw/nfc/RouteEntry;->mAid:[B

    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/vzw/nfc/RouteEntry;->mLocation:I

    return v0
.end method

.method public getPowerState()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/vzw/nfc/RouteEntry;->mPowerState:I

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/vzw/nfc/RouteEntry;->mAllowed:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 55
    iget-boolean v1, p0, Lcom/vzw/nfc/RouteEntry;->mAllowed:Z

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/vzw/nfc/RouteEntry;->mLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/vzw/nfc/RouteEntry;->mPowerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/vzw/nfc/RouteEntry;->mAid:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/vzw/nfc/RouteEntry;->mAid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 60
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
