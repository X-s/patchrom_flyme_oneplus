.class Lcom/nearme/aidl/UserEntity$1;
.super Ljava/lang/Object;
.source "UserEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/aidl/UserEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nearme/aidl/UserEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nearme/aidl/UserEntity;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .local v1, "result":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "resultMsg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "username":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "authToken":Ljava/lang/String;
    new-instance v3, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v3}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 106
    .local v3, "userEntity":Lcom/nearme/aidl/UserEntity;
    invoke-virtual {v3, v1}, Lcom/nearme/aidl/UserEntity;->setResult(I)V

    .line 107
    invoke-virtual {v3, v2}, Lcom/nearme/aidl/UserEntity;->setResultMsg(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3, v4}, Lcom/nearme/aidl/UserEntity;->setUsername(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v0}, Lcom/nearme/aidl/UserEntity;->setAuthToken(Ljava/lang/String;)V

    .line 111
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nearme/aidl/UserEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/nearme/aidl/UserEntity;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 95
    new-array v0, p1, [Lcom/nearme/aidl/UserEntity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nearme/aidl/UserEntity$1;->newArray(I)[Lcom/nearme/aidl/UserEntity;

    move-result-object v0

    return-object v0
.end method
