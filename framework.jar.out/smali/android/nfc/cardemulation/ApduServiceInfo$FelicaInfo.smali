.class public Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FelicaInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final felicaId:Ljava/lang/String;

.field final optParams:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1171
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "felica_id"    # Ljava/lang/String;
    .param p2, "opt_params"    # Ljava/lang/String;

    .prologue
    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->felicaId:Ljava/lang/String;

    .line 1142
    iput-object p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->optParams:Ljava/lang/String;

    .line 1143
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method public getFelicaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->felicaId:Ljava/lang/String;

    return-object v0
.end method

.method public getOptParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->optParams:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "felica id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->felicaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",optional params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->optParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1167
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->felicaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->optParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1169
    return-void
.end method
