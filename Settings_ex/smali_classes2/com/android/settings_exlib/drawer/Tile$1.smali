.class final Lcom/android/settings_exlib/drawer/Tile$1;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/drawer/Tile;
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
        "Lcom/android/settings_exlib/drawer/Tile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings_exlib/drawer/Tile;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 143
    new-instance v0, Lcom/android/settings_exlib/drawer/Tile;

    invoke-direct {v0, p1}, Lcom/android/settings_exlib/drawer/Tile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/drawer/Tile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings_exlib/drawer/Tile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings_exlib/drawer/Tile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 146
    new-array v0, p1, [Lcom/android/settings_exlib/drawer/Tile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/drawer/Tile$1;->newArray(I)[Lcom/android/settings_exlib/drawer/Tile;

    move-result-object v0

    return-object v0
.end method
