.class public Lcom/nearme/aidl/UserEntity;
.super Ljava/lang/Object;
.source "UserEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nearme/aidl/UserEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authToken:Ljava/lang/String;

.field private result:I

.field private resultMsg:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/nearme/aidl/UserEntity$1;

    invoke-direct {v0}, Lcom/nearme/aidl/UserEntity$1;-><init>()V

    sput-object v0, Lcom/nearme/aidl/UserEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/nearme/aidl/UserEntity;->result:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "resultMsg"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/nearme/aidl/UserEntity;->result:I

    .line 29
    iput-object p2, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/nearme/aidl/UserEntity;->result:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/nearme/aidl/UserEntity;->result:I

    .line 55
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget v0, p0, Lcom/nearme/aidl/UserEntity;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->resultMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/nearme/aidl/UserEntity;->authToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
