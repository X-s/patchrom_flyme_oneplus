.class public Landroid/app/ActivityManager$HighPowerApp;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighPowerApp"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isLocked:Z

.field public isStopped:Z

.field public pkgName:Ljava/lang/String;

.field public powerLevel:I

.field public timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2424
    new-instance v0, Landroid/app/ActivityManager$HighPowerApp$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$HighPowerApp$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$HighPowerApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2405
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$HighPowerApp;->readFromParcel(Landroid/os/Parcel;)V

    .line 2406
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZJ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "locked"    # Z
    .param p4, "stopped"    # Z
    .param p5, "time"    # J

    .prologue
    .line 2392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2393
    iput-object p1, p0, Landroid/app/ActivityManager$HighPowerApp;->pkgName:Ljava/lang/String;

    .line 2394
    iput p2, p0, Landroid/app/ActivityManager$HighPowerApp;->powerLevel:I

    .line 2395
    iput-boolean p3, p0, Landroid/app/ActivityManager$HighPowerApp;->isLocked:Z

    .line 2396
    iput-boolean p4, p0, Landroid/app/ActivityManager$HighPowerApp;->isStopped:Z

    .line 2397
    iput-wide p5, p0, Landroid/app/ActivityManager$HighPowerApp;->timeStamp:J

    .line 2398
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2401
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$HighPowerApp;->pkgName:Ljava/lang/String;

    .line 2418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$HighPowerApp;->powerLevel:I

    .line 2419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/ActivityManager$HighPowerApp;->isLocked:Z

    .line 2420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/ActivityManager$HighPowerApp;->isStopped:Z

    .line 2421
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$HighPowerApp;->timeStamp:J

    .line 2422
    return-void

    :cond_0
    move v0, v2

    .line 2419
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2420
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2409
    iget-object v0, p0, Landroid/app/ActivityManager$HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2410
    iget v0, p0, Landroid/app/ActivityManager$HighPowerApp;->powerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2411
    iget-boolean v0, p0, Landroid/app/ActivityManager$HighPowerApp;->isLocked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2412
    iget-boolean v0, p0, Landroid/app/ActivityManager$HighPowerApp;->isStopped:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    iget-wide v0, p0, Landroid/app/ActivityManager$HighPowerApp;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2414
    return-void

    :cond_0
    move v0, v2

    .line 2411
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2412
    goto :goto_1
.end method
