.class final Landroid/app/ActivityManager$HighPowerApp$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$HighPowerApp;
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
        "Landroid/app/ActivityManager$HighPowerApp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$HighPowerApp;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3233
    new-instance v0, Landroid/app/ActivityManager$HighPowerApp;

    invoke-direct {v0, p1}, Landroid/app/ActivityManager$HighPowerApp;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3232
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$HighPowerApp$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$HighPowerApp;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$HighPowerApp;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 3237
    new-array v0, p1, [Landroid/app/ActivityManager$HighPowerApp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 3236
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$HighPowerApp$1;->newArray(I)[Landroid/app/ActivityManager$HighPowerApp;

    move-result-object v0

    return-object v0
.end method
