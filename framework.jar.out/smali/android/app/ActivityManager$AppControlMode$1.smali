.class final Landroid/app/ActivityManager$AppControlMode$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$AppControlMode;
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
        "Landroid/app/ActivityManager$AppControlMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$AppControlMode;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2663
    new-instance v0, Landroid/app/ActivityManager$AppControlMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ActivityManager$AppControlMode;-><init>(Landroid/os/Parcel;Landroid/app/ActivityManager$AppControlMode;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2662
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$AppControlMode$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$AppControlMode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$AppControlMode;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2667
    new-array v0, p1, [Landroid/app/ActivityManager$AppControlMode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2666
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$AppControlMode$1;->newArray(I)[Landroid/app/ActivityManager$AppControlMode;

    move-result-object v0

    return-object v0
.end method
