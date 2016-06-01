.class public Lcom/oppo/music/media/Playlist;
.super Ljava/lang/Object;
.source "Playlist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/music/media/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_DIGITS:[C

.field private static final ITEM_REVERSE_HEX_SPLIT:Ljava/lang/String; = ","

.field private static final LIST_REVERSE_HEX_SPLIT:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "Playlist"


# instance fields
.field private mPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/music/media/PlaylistItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/oppo/music/media/Playlist$1;

    invoke-direct {v0}, Lcom/oppo/music/media/Playlist$1;-><init>()V

    sput-object v0, Lcom/oppo/music/media/Playlist;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/music/media/Playlist;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    .line 40
    return-void
.end method

.method private static longToReverseHex(J)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 187
    const/4 v2, 0x0

    .line 189
    .local v2, "result":Ljava/lang/String;
    cmp-long v3, p0, v6

    if-gtz v3, :cond_0

    .line 190
    const-string v2, "0"

    .line 203
    :goto_0
    return-object v2

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_1
    cmp-long v3, p0, v6

    if-lez v3, :cond_1

    .line 195
    const-wide/16 v4, 0xf

    and-long/2addr v4, p0

    long-to-int v1, v4

    .line 196
    .local v1, "digit":I
    const/4 v3, 0x4

    shr-long/2addr p0, v3

    .line 197
    sget-object v3, Lcom/oppo/music/media/Playlist;->HEX_DIGITS:[C

    aget-char v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 200
    .end local v1    # "digit":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static playlistToReverseHex(Lcom/oppo/music/media/Playlist;)Ljava/lang/String;
    .locals 8
    .param p0, "playlist"    # Lcom/oppo/music/media/Playlist;

    .prologue
    .line 228
    const/4 v5, 0x0

    .line 230
    .local v5, "result":Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->getPlaylistItems()[Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    .local v0, "arr$":[Lcom/oppo/music/media/PlaylistItem;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 234
    .local v3, "item":Lcom/oppo/music/media/PlaylistItem;
    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {v3}, Lcom/oppo/music/media/PlaylistItem;->getType()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/oppo/music/media/Playlist;->longToReverseHex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v3}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/oppo/music/media/Playlist;->longToReverseHex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "item":Lcom/oppo/music/media/PlaylistItem;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    .end local v0    # "arr$":[Lcom/oppo/music/media/PlaylistItem;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-object v5
.end method

.method private static reverseHexToLong(Ljava/lang/String;)J
    .locals 6
    .param p0, "reverseHex"    # Ljava/lang/String;

    .prologue
    .line 207
    const-wide/16 v2, 0x0

    .line 209
    .local v2, "result":J
    if-eqz p0, :cond_1

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_1

    .line 211
    const/4 v4, 0x4

    shl-long/2addr v2, v4

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 214
    .local v0, "c":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    .line 215
    add-int/lit8 v4, v0, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 210
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 216
    :cond_0
    const/16 v4, 0x41

    if-lt v0, v4, :cond_1

    const/16 v4, 0x46

    if-gt v0, v4, :cond_1

    .line 217
    add-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, -0x41

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_1

    .line 224
    .end local v0    # "c":C
    .end local v1    # "j":I
    :cond_1
    return-wide v2
.end method

.method public static reverseHexToPlaylist(Ljava/lang/String;)Lcom/oppo/music/media/Playlist;
    .locals 14
    .param p0, "reverseHex"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v8, 0x0

    .line 251
    .local v8, "result":Lcom/oppo/music/media/Playlist;
    if-eqz p0, :cond_1

    .line 252
    const-string v11, ";"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "items":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v11, v5

    if-lez v11, :cond_1

    .line 254
    new-instance v8, Lcom/oppo/music/media/Playlist;

    .end local v8    # "result":Lcom/oppo/music/media/Playlist;
    invoke-direct {v8}, Lcom/oppo/music/media/Playlist;-><init>()V

    .line 256
    .restart local v8    # "result":Lcom/oppo/music/media/Playlist;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v4, v0, v1

    .line 257
    .local v4, "item":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 258
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, "values":[Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v11, v10

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    .line 260
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Lcom/oppo/music/media/Playlist;->reverseHexToLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v9, v12

    .line 261
    .local v9, "type":I
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Lcom/oppo/music/media/Playlist;->reverseHexToLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 263
    .local v2, "id":J
    new-instance v7, Lcom/oppo/music/media/PlaylistItem;

    invoke-direct {v7, v9, v2, v3}, Lcom/oppo/music/media/PlaylistItem;-><init>(IJ)V

    .line 264
    .local v7, "playlistItem":Lcom/oppo/music/media/PlaylistItem;
    invoke-virtual {v8, v7}, Lcom/oppo/music/media/Playlist;->addPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V

    .line 256
    .end local v2    # "id":J
    .end local v7    # "playlistItem":Lcom/oppo/music/media/PlaylistItem;
    .end local v9    # "type":I
    .end local v10    # "values":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_1
    return-object v8
.end method


# virtual methods
.method public addPlaylistItem(ILcom/oppo/music/media/PlaylistItem;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "item"    # Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public addPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V
    .locals 1
    .param p1, "item"    # Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    return-void
.end method

.method public copy()Lcom/oppo/music/media/Playlist;
    .locals 3

    .prologue
    .line 276
    new-instance v1, Lcom/oppo/music/media/Playlist;

    invoke-direct {v1}, Lcom/oppo/music/media/Playlist;-><init>()V

    .line 277
    .local v1, "list":Lcom/oppo/music/media/Playlist;
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    if-nez v2, :cond_1

    .line 283
    :cond_0
    return-object v1

    .line 280
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/music/media/PlaylistItem;

    invoke-virtual {v1, v2}, Lcom/oppo/music/media/Playlist;->addPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public dumpInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 112
    .local v2, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 113
    iget-object v3, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/music/media/PlaylistItem;

    invoke-virtual {v3}, Lcom/oppo/music/media/PlaylistItem;->dumpInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 121
    const/4 v3, 0x0

    .line 123
    .local v3, "result":Z
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/oppo/music/media/Playlist;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 124
    check-cast v2, Lcom/oppo/music/media/Playlist;

    .line 126
    .local v2, "list":Lcom/oppo/music/media/Playlist;
    invoke-virtual {v2}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 128
    const/4 v3, 0x1

    .line 147
    .end local v2    # "list":Lcom/oppo/music/media/Playlist;
    :cond_0
    :goto_0
    return v3

    .line 130
    .restart local v2    # "list":Lcom/oppo/music/media/Playlist;
    :cond_1
    const/4 v1, 0x0

    .line 131
    .local v1, "item":Lcom/oppo/music/media/PlaylistItem;
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 133
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 134
    invoke-virtual {v2, v0}, Lcom/oppo/music/media/Playlist;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oppo/music/media/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 140
    :cond_2
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 141
    const/4 v3, 0x1

    goto :goto_0

    .line 133
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getItemIDs()[J
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 84
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/music/media/PlaylistItem;

    invoke-virtual {v2}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-object v1
.end method

.method public getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "result":Lcom/oppo/music/media/PlaylistItem;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/oppo/music/media/PlaylistItem;
    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 105
    .restart local v0    # "result":Lcom/oppo/music/media/PlaylistItem;
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const-string v1, "Playlist"

    const-string v2, "getPlaylistItem() index is out of bound. index=%s, size=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPlaylistItems()[Lcom/oppo/music/media/PlaylistItem;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v2

    new-array v1, v2, [Lcom/oppo/music/media/PlaylistItem;

    .line 74
    .local v1, "result":[Lcom/oppo/music/media/PlaylistItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/music/media/PlaylistItem;

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object v1
.end method

.method public removePlaylistItem(I)Z
    .locals 3
    .param p1, "location"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "item":Lcom/oppo/music/media/PlaylistItem;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/oppo/music/media/PlaylistItem;
    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 60
    .restart local v0    # "item":Lcom/oppo/music/media/PlaylistItem;
    :goto_0
    if-eqz v0, :cond_1

    .line 61
    const/4 v1, 0x1

    .line 63
    :goto_1
    return v1

    .line 57
    :cond_0
    const-string v1, "Playlist"

    const-string v2, "removePlaylistItem() location is out of bound."

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->dumpInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oppo/music/media/Playlist;->mPlaylist:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 163
    return-void
.end method
