.class public Lcom/oppo/music/media/Track;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/oppo/music/media/TrackInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/music/media/Track;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Track"

.field public static final UNKNOWN_ID:I


# instance fields
.field protected mAbsolutePath:Ljava/lang/String;

.field protected mAlbumID:J

.field protected mAlbumName:Ljava/lang/String;

.field protected mArtistID:J

.field protected mArtistName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mEndPos:J

.field protected mLyricPath:Ljava/lang/String;

.field protected mLyricUrl:Ljava/lang/String;

.field protected mStartPos:J

.field protected mTrackID:J

.field protected mTrackName:Ljava/lang/String;

.field protected mTrackThumbPath:Ljava/lang/String;

.field protected mTrackThumbUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/oppo/music/media/Track$1;

    invoke-direct {v0}, Lcom/oppo/music/media/Track$1;-><init>()V

    sput-object v0, Lcom/oppo/music/media/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    .line 39
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    .line 40
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    .line 41
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    .line 42
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    .line 43
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    .line 44
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    .line 39
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    .line 40
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    .line 41
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    .line 42
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    .line 43
    iput-wide v2, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    .line 44
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public dumpInfo()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "mAbsolutePath = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "mLyricPath = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "mTrackThumbPath = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "mTrackName = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "mAlbumName = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "mArtistName = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "mTrackID = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "mAlbumID = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "mArtistID = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "mStartPos = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "mEndPos = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "mTrackThumbUrl = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "mLyricUrl = %s\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "result":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/oppo/music/media/Track;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 228
    check-cast v1, Lcom/oppo/music/media/Track;

    .line 229
    .local v1, "track":Lcom/oppo/music/media/Track;
    iget-wide v2, v1, Lcom/oppo/music/media/Track;->mTrackID:J

    iget-wide v4, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 234
    .end local v1    # "track":Lcom/oppo/music/media/Track;
    :cond_0
    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumID()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistID()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    iget-wide v2, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEndPos()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    return-wide v0
.end method

.method public getLyricPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    return-wide v0
.end method

.method public getTrackID()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    return-wide v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setAlbumID(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    .line 120
    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setArtistID(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    .line 130
    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setEndPos(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    .line 150
    return-void
.end method

.method public setLyricPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyricPath"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLyricUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setStartPos(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    .line 140
    return-void
.end method

.method public setTrackID(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    .line 110
    return-void
.end method

.method public setTrackName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTrackThumbPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackThumbPath"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTrackThumbUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/oppo/music/media/Track;->dumpInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mTrackID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mAlbumID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mArtistID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mStartPos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    iget-wide v0, p0, Lcom/oppo/music/media/Track;->mEndPos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 254
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mAbsolutePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mLyricPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mTrackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mTrackThumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/oppo/music/media/Track;->mLyricUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    return-void
.end method
