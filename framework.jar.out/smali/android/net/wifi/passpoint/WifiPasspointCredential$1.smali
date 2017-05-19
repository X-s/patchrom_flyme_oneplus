.class final Landroid/net/wifi/passpoint/WifiPasspointCredential$1;
.super Ljava/lang/Object;
.source "WifiPasspointCredential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/passpoint/WifiPasspointCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 615
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointCredential;-><init>()V

    .line 616
    .local v0, "pc":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->access$002(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->access$102(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->access$202(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->access$302(Landroid/net/wifi/passpoint/WifiPasspointCredential;I)I

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->access$402(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->access$502(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointCredential;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 626
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointCredential;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointCredential;

    move-result-object v0

    return-object v0
.end method
