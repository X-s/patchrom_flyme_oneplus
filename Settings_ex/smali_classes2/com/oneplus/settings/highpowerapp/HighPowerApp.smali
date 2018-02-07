.class public Lcom/oneplus/settings/highpowerapp/HighPowerApp;
.super Ljava/lang/Object;
.source "HighPowerApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/highpowerapp/HighPowerApp$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIGH_POWER_USAGE:I = 0x1

.field public static final MIDDLE_POWER_USAGE:I


# instance fields
.field public isLocked:Z

.field public isStopped:Z

.field public pkgName:Ljava/lang/String;

.field public powerLevel:I

.field public timeStamp:J

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp$1;

    invoke-direct {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerApp$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZJ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "level"    # I
    .param p4, "locked"    # Z
    .param p5, "stopped"    # Z
    .param p6, "time"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    .line 28
    iput p3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    .line 29
    iput-boolean p4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isLocked:Z

    .line 30
    iput-boolean p5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isStopped:Z

    .line 31
    iput-wide p6, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->timeStamp:J

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZJ)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "locked"    # Z
    .param p4, "stopped"    # Z
    .param p5, "time"    # J

    .prologue
    .line 22
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IIZZJ)V

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isLocked:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isStopped:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->timeStamp:J

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 58
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isLocked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isStopped:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-wide v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move v1, v2

    .line 50
    goto :goto_1
.end method
