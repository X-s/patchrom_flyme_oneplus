.class public Lcom/oppo/music/media/PlaylistItem;
.super Ljava/lang/Object;
.source "PlaylistItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/music/media/PlaylistItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_TYPE_LOCAL:I = 0x0

.field public static final ITEM_TYPE_REMOTE:I = 0x1

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PlaylistItem"

.field public static final UNKNOWN_ID:I = -0x1


# instance fields
.field private mItemID:J

.field private mItemType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/oppo/music/media/PlaylistItem$1;

    invoke-direct {v0}, Lcom/oppo/music/media/PlaylistItem$1;-><init>()V

    sput-object v0, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    .line 42
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "id"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    .line 45
    iput p1, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    .line 46
    iput-wide p2, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public dumpInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    const-string v0, "{mItemType=%s, mItemID=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "result":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/oppo/music/media/PlaylistItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 72
    .local v0, "item":Lcom/oppo/music/media/PlaylistItem;
    invoke-virtual {v0}, Lcom/oppo/music/media/PlaylistItem;->getType()I

    move-result v2

    iget v3, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 73
    const/4 v1, 0x1

    .line 77
    .end local v0    # "item":Lcom/oppo/music/media/PlaylistItem;
    :cond_0
    return v1
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/oppo/music/media/PlaylistItem;->dumpInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    return-void
.end method
