.class public Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbValues"
.end annotation


# instance fields
.field public volatile addedTime:J

.field public volatile data:Ljava/lang/String;

.field public volatile duration:J

.field public volatile extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

.field public volatile height:I

.field public volatile id:J

.field public volatile latitude:D

.field public volatile longitude:D

.field public volatile mediaType:I

.field public volatile mimeType:Ljava/lang/String;

.field public volatile orientation:I

.field public volatile parentId:J

.field public volatile takenTime:J

.field public volatile width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/database/Cursor;)Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 166
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;-><init>()V

    .line 167
    .local v0, "values":Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    .line 168
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    .line 169
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    .line 170
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mimeType:Ljava/lang/String;

    .line 171
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->takenTime:J

    .line 172
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->addedTime:J

    .line 173
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    .line 174
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    .line 175
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    .line 176
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    .line 177
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->orientation:I

    .line 178
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->duration:J

    .line 179
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->parentId:J

    .line 180
    return-object v0
.end method
