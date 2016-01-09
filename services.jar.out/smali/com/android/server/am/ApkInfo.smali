.class public Lcom/android/server/am/ApkInfo;
.super Ljava/lang/Object;
.source "ApkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/am/ApkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsForbid:Z

.field private mStrPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/server/am/ApkInfo$1;

    invoke-direct {v0}, Lcom/android/server/am/ApkInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/am/ApkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ApkInfo;->mStrPackageName:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ApkInfo;->mIsForbid:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "pl"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ApkInfo;->mStrPackageName:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ApkInfo;->mIsForbid:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ApkInfo;->mStrPackageName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/am/ApkInfo;->mStrPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isForbid()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/server/am/ApkInfo;->mIsForbid:Z

    return v0
.end method

.method public setForbid(Z)V
    .locals 0
    .param p1, "mIsForbid"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/am/ApkInfo;->mIsForbid:Z

    .line 28
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "p_strPackageName"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/server/am/ApkInfo;->mStrPackageName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/ApkInfo;->mStrPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method
