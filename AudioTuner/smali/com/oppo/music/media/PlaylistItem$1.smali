.class final Lcom/oppo/music/media/PlaylistItem$1;
.super Ljava/lang/Object;
.source "PlaylistItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/media/PlaylistItem;
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
        "Lcom/oppo/music/media/PlaylistItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oppo/music/media/PlaylistItem;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 99
    new-instance v0, Lcom/oppo/music/media/PlaylistItem;

    invoke-direct {v0, p1}, Lcom/oppo/music/media/PlaylistItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/oppo/music/media/PlaylistItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oppo/music/media/PlaylistItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 103
    new-array v0, p1, [Lcom/oppo/music/media/PlaylistItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/oppo/music/media/PlaylistItem$1;->newArray(I)[Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    return-object v0
.end method
