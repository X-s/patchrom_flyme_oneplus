.class public final Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumInfo"
.end annotation


# instance fields
.field public volatile albumId:J

.field public volatile creationTime:J

.field public volatile lastMediaAddedTime:J

.field public volatile lastModifiedTime:J

.field public volatile name:Ljava/lang/String;

.field public volatile oneplusFlags:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 258
    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 267
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 258
    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 270
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 258
    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    const-string/jumbo v0, "_id"

    .line 274
    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    const-string/jumbo v0, "_display_name"

    .line 275
    invoke-static {p1, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    const-string/jumbo v0, "date_added"

    .line 276
    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    const-string/jumbo v0, "date_modified"

    .line 277
    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    const-string/jumbo v0, "date_media_added"

    .line 278
    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    const-string/jumbo v0, "oneplus_flags"

    .line 279
    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->oneplusFlags:J

    .line 280
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .locals 2

    .prologue
    .line 288
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 292
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v0

    return-object v0
.end method
