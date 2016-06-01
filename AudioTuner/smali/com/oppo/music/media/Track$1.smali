.class final Lcom/oppo/music/media/Track$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/media/Track;
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
        "Lcom/oppo/music/media/Track;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oppo/music/media/Track;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 267
    new-instance v0, Lcom/oppo/music/media/Track;

    invoke-direct {v0, p1}, Lcom/oppo/music/media/Track;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/oppo/music/media/Track$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/music/media/Track;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oppo/music/media/Track;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 271
    new-array v0, p1, [Lcom/oppo/music/media/Track;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/oppo/music/media/Track$1;->newArray(I)[Lcom/oppo/music/media/Track;

    move-result-object v0

    return-object v0
.end method
