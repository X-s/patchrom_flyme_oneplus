.class public abstract Lcom/oneplus/gallery/media/MediaStoreMedia;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/Media;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;,
        Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    }
.end annotation


# static fields
.field protected static final CAPACITY_MEDIA_CACHE:J = 0x8000000L

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_INFO_CACHE:Lcom/oneplus/gallery/cache/MediaInfoLruCache;

.field private static final MIN_MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final PRINT_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaStoreMedia"

.field protected static final TIMEOUT_GET_MEDIA_CACHE:I = 0x64


# instance fields
.field private final m_ContentUri:Landroid/net/Uri;

.field private m_DateAdded:J

.field private volatile m_FilePath:Ljava/lang/String;

.field private volatile m_FileSize:J

.field private final m_Handler:Landroid/os/Handler;

.field private m_Id:J

.field private m_IgnoreThumbnailUpdate:Z

.field private volatile m_IsCapturedByFrontCamera:Z

.field private volatile m_IsFavorite:Z

.field private volatile m_LastModifiedTime:J

.field private volatile m_Location:Landroid/location/Location;

.field private m_MediaInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MimeType:Ljava/lang/String;

.field private m_ParentId:J

.field private final m_Size:[I

.field private m_TakenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "media_type"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "_size"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "parent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "media_type"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "parent"

    aput-object v1, v0, v7

    sput-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->MIN_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/oneplus/gallery/cache/MediaInfoLruCache;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const-string v2, "MediaInfoCache"

    const-wide/32 v4, 0x8000000

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/oneplus/gallery/cache/MediaInfoLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->MEDIA_INFO_CACHE:Lcom/oneplus/gallery/cache/MediaInfoLruCache;

    return-void
.end method

.method protected constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V
    .locals 5
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean v4, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IgnoreThumbnailUpdate:Z

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Size:[I

    .line 230
    if-nez p4, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Handler:Landroid/os/Handler;

    .line 237
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    .line 238
    const-string v0, "mime_type"

    invoke-static {p2, v0}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MimeType:Ljava/lang/String;

    .line 239
    const-string v0, "parent"

    const-wide/16 v2, -0x1

    invoke-static {p2, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_ParentId:J

    .line 240
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Id:J

    .line 243
    invoke-virtual {p0, p2, p3, v4}, Lcom/oneplus/gallery/media/MediaStoreMedia;->onUpdate(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Z)Z

    .line 244
    return-void
.end method

.method public static create(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)Lcom/oneplus/gallery/media/MediaStoreMedia;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 258
    const-string v2, "media_type"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 261
    :pswitch_1
    new-instance v1, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;-><init>(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V

    goto :goto_0

    .line 263
    :pswitch_2
    new-instance v1, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;-><init>(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V

    goto :goto_0

    .line 271
    :pswitch_3
    const-string v2, "mime_type"

    invoke-static {p0, v2}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 274
    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    new-instance v1, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;-><init>(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V

    goto :goto_0

    .line 276
    :cond_1
    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    new-instance v1, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;-><init>(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getContentUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 300
    const-string v0, "media_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getContentUri(Landroid/database/Cursor;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(Landroid/database/Cursor;I)Landroid/net/Uri;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "mediaType"    # I

    .prologue
    .line 312
    packed-switch p1, :pswitch_data_0

    .line 319
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 315
    :pswitch_1
    invoke-static {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getContentUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 317
    :pswitch_2
    invoke-static {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getContentUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMediaColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getMediaInfoCache()Lcom/oneplus/gallery/cache/MediaInfoLruCache;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->MEDIA_INFO_CACHE:Lcom/oneplus/gallery/cache/MediaInfoLruCache;

    return-object v0
.end method

.method public static getMinimumMediaColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->MIN_MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_DateAdded:J

    return-wide v0
.end method

.method public getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "callback"    # Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 341
    const-string v2, "MediaStoreMedia"

    const-string v3, "getDetails() - No call-back"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    .line 346
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;-><init>(Lcom/oneplus/gallery/media/MediaStoreMedia;Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)V

    .line 349
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;
    new-instance v1, Lcom/oneplus/gallery/media/MediaStoreMedia$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMedia$1;-><init>(Lcom/oneplus/gallery/media/MediaStoreMedia;Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;)V

    .line 371
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v1, v0, Lcom/oneplus/gallery/media/MediaStoreMedia$MediaDetailsHandle;->task:Landroid/os/AsyncTask;

    .line 372
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected getDetails()Lcom/oneplus/gallery/media/MediaDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FileSize:J

    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Size:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Id:J

    return-wide v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 429
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    return-object v0
.end method

.method protected getMediaInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method getParentId()J
    .locals 2

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_ParentId:J

    return-wide v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 493
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_TakenTime:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Size:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 511
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IsCapturedByFrontCamera:Z

    return v0
.end method

.method public isDependencyThread()Z
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocumentUri()Z
    .locals 2

    .prologue
    .line 543
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IsFavorite:Z

    return v0
.end method

.method protected onUpdate(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Z)Z
    .locals 34
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .param p3, "fromConstructor"    # Z

    .prologue
    .line 556
    const/4 v6, 0x0

    .line 559
    .local v6, "changed":Z
    const/4 v9, 0x1

    .line 560
    .local v9, "ignoreThumbnailUpdate":Z
    if-eqz p1, :cond_f

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 564
    .local v19, "prevFilePath":Ljava/lang/String;
    const-string v28, "_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    .line 565
    if-nez p3, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_12

    const/4 v6, 0x1

    .line 568
    :goto_0
    const/4 v7, 0x0

    .line 569
    .local v7, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FileSize:J

    move-wide/from16 v20, v0

    .line 570
    .local v20, "prevFileSize":J
    const-string v28, "_size"

    const-wide/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FileSize:J

    .line 571
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FileSize:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-gtz v28, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_22

    .line 575
    :try_start_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 576
    .end local v7    # "file":Ljava/io/File;
    .local v8, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FileSize:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-object v7, v8

    .line 582
    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :goto_1
    if-nez p3, :cond_22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FileSize:J

    move-wide/from16 v28, v0

    cmp-long v28, v20, v28

    if-eqz v28, :cond_22

    .line 583
    const/4 v9, 0x0

    move-object v8, v7

    .line 585
    .end local v7    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    :goto_2
    if-nez v6, :cond_0

    if-nez p3, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FileSize:J

    move-wide/from16 v28, v0

    cmp-long v28, v20, v28

    if-eqz v28, :cond_13

    const/4 v6, 0x1

    .line 589
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    move-wide/from16 v26, v0

    .line 590
    .local v26, "prevTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_14

    .line 594
    if-nez v8, :cond_21

    .line 595
    :try_start_2
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 596
    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :goto_4
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 611
    :goto_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 615
    :cond_1
    sget-object v28, Lcom/oneplus/gallery/media/MediaStoreMedia;->MEDIA_INFO_CACHE:Lcom/oneplus/gallery/cache/MediaInfoLruCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v30, v0

    const-wide/16 v32, 0x64

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/HashMap;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    .line 617
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    .line 619
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    .line 623
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_5

    .line 625
    const/4 v10, 0x0

    .line 626
    .local v10, "isCacheValid":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    const-string v29, "_size"

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    const-string v29, "date_modified"

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FileSize:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    const-string v29, "_size"

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v28, v30, v28

    if-nez v28, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    const-string v29, "date_modified"

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v28, v30, v28

    if-nez v28, :cond_4

    .line 629
    const/4 v10, 0x1

    .line 631
    :cond_4
    if-nez v10, :cond_5

    .line 633
    const-string v28, "MediaStoreMedia"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onUpdate() - cache is not valid , path :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", m_MediaInfoCache: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_MediaInfo:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->clear()V

    .line 635
    sget-object v28, Lcom/oneplus/gallery/media/MediaStoreMedia;->MEDIA_INFO_CACHE:Lcom/oneplus/gallery/cache/MediaInfoLruCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->remove(Ljava/io/Serializable;)Z

    .line 644
    .end local v10    # "isCacheValid":Z
    :cond_5
    if-nez p3, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    move-wide/from16 v28, v0

    cmp-long v28, v26, v28

    if-eqz v28, :cond_6

    .line 645
    const/4 v9, 0x0

    .line 647
    :cond_6
    if-nez v6, :cond_7

    if-nez p3, :cond_7

    .line 648
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    move-wide/from16 v28, v0

    cmp-long v28, v26, v28

    if-eqz v28, :cond_16

    const/4 v6, 0x1

    .line 651
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_DateAdded:J

    move-wide/from16 v16, v0

    .line 652
    .local v16, "prevDateAdded":J
    const-string v28, "date_added"

    const-wide/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_DateAdded:J

    .line 653
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_DateAdded:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_8

    .line 654
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_DateAdded:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_DateAdded:J

    .line 655
    :cond_8
    if-nez v6, :cond_9

    if-nez p3, :cond_9

    .line 656
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_DateAdded:J

    move-wide/from16 v28, v0

    cmp-long v28, v16, v28

    if-eqz v28, :cond_17

    const/4 v6, 0x1

    .line 659
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Size:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v25, v28, v29

    .line 660
    .local v25, "prevWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Size:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v23, v28, v29

    .line 661
    .local v23, "prevHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Size:[I

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaStoreMedia;->setupSize(Landroid/database/Cursor;[I)V

    .line 662
    if-nez v6, :cond_b

    if-nez p3, :cond_b

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Size:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Size:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_18

    :cond_a
    const/4 v6, 0x1

    .line 666
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v24, v0

    .line 667
    .local v24, "prevLocation":Landroid/location/Location;
    const-string v28, "latitude"

    const-wide/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/database/CursorUtils;->getDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v12

    .line 668
    .local v12, "lat":D
    const-string v28, "longitude"

    const-wide/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/database/CursorUtils;->getDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v14

    .line 669
    .local v14, "lng":D
    const-wide/16 v28, 0x0

    cmpl-double v28, v12, v28

    if-eqz v28, :cond_c

    const-wide/16 v28, 0x0

    cmpl-double v28, v14, v28

    if-eqz v28, :cond_c

    .line 671
    new-instance v28, Landroid/location/Location;

    const-string v29, ""

    invoke-direct/range {v28 .. v29}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Landroid/location/Location;->setLongitude(D)V

    .line 675
    :cond_c
    if-nez v6, :cond_e

    if-nez p3, :cond_e

    .line 677
    if-eqz v24, :cond_1b

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1a

    .line 680
    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getLatitude()D

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getLatitude()D

    move-result-wide v30

    cmpl-double v28, v28, v30

    if-nez v28, :cond_d

    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getLongitude()D

    move-result-wide v30

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_19

    :cond_d
    const/4 v6, 0x1

    .line 689
    :cond_e
    :goto_9
    if-eqz p3, :cond_f

    .line 691
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/gallery/media/MediaStoreMedia;->setupTakenTime(Landroid/database/Cursor;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_TakenTime:J

    .line 701
    .end local v7    # "file":Ljava/io/File;
    .end local v12    # "lat":D
    .end local v14    # "lng":D
    .end local v16    # "prevDateAdded":J
    .end local v19    # "prevFilePath":Ljava/lang/String;
    .end local v20    # "prevFileSize":J
    .end local v23    # "prevHeight":I
    .end local v24    # "prevLocation":Landroid/location/Location;
    .end local v25    # "prevWidth":I
    .end local v26    # "prevTime":J
    :cond_f
    if-eqz p2, :cond_11

    .line 704
    move-object/from16 v0, p2

    iget v11, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    .line 705
    .local v11, "oneplusFlags":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IsFavorite:Z

    move/from16 v18, v0

    .line 706
    .local v18, "prevFavorite":Z
    and-int/lit8 v28, v11, 0x10

    if-eqz v28, :cond_1c

    const/16 v28, 0x1

    :goto_a
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IsFavorite:Z

    .line 707
    if-nez v6, :cond_10

    if-nez p3, :cond_10

    .line 708
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IsFavorite:Z

    move/from16 v28, v0

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    const/4 v6, 0x1

    .line 711
    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IsCapturedByFrontCamera:Z

    move/from16 v22, v0

    .line 712
    .local v22, "prevFrontCamState":Z
    and-int/lit8 v28, v11, 0x1

    if-eqz v28, :cond_1e

    const/16 v28, 0x1

    :goto_c
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IsCapturedByFrontCamera:Z

    .line 713
    if-nez v6, :cond_11

    if-nez p3, :cond_11

    .line 714
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IsCapturedByFrontCamera:Z

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    const/4 v6, 0x1

    .line 718
    .end local v11    # "oneplusFlags":I
    .end local v18    # "prevFavorite":Z
    .end local v22    # "prevFrontCamState":Z
    :cond_11
    :goto_d
    if-eqz p3, :cond_20

    .line 719
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IgnoreThumbnailUpdate:Z

    .line 724
    :goto_e
    return v6

    .line 565
    .restart local v19    # "prevFilePath":Ljava/lang/String;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 586
    .restart local v8    # "file":Ljava/io/File;
    .restart local v20    # "prevFileSize":J
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 603
    .restart local v26    # "prevTime":J
    :cond_14
    const-string v28, "date_modified"

    const-wide/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    .line 604
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_15

    .line 605
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_LastModifiedTime:J

    :cond_15
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_5

    .line 648
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 656
    .restart local v16    # "prevDateAdded":J
    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 663
    .restart local v23    # "prevHeight":I
    .restart local v25    # "prevWidth":I
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 680
    .restart local v12    # "lat":D
    .restart local v14    # "lng":D
    .restart local v24    # "prevLocation":Landroid/location/Location;
    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 682
    :cond_1a
    const/4 v6, 0x1

    goto/16 :goto_9

    .line 684
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 685
    const/4 v6, 0x1

    goto/16 :goto_9

    .line 706
    .end local v7    # "file":Ljava/io/File;
    .end local v12    # "lat":D
    .end local v14    # "lng":D
    .end local v16    # "prevDateAdded":J
    .end local v19    # "prevFilePath":Ljava/lang/String;
    .end local v20    # "prevFileSize":J
    .end local v23    # "prevHeight":I
    .end local v24    # "prevLocation":Landroid/location/Location;
    .end local v25    # "prevWidth":I
    .end local v26    # "prevTime":J
    .restart local v11    # "oneplusFlags":I
    .restart local v18    # "prevFavorite":Z
    :cond_1c
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 708
    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_b

    .line 712
    .restart local v22    # "prevFrontCamState":Z
    :cond_1e
    const/16 v28, 0x0

    goto :goto_c

    .line 714
    :cond_1f
    const/4 v6, 0x0

    goto :goto_d

    .line 721
    .end local v11    # "oneplusFlags":I
    .end local v18    # "prevFavorite":Z
    .end local v22    # "prevFrontCamState":Z
    :cond_20
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IgnoreThumbnailUpdate:Z

    goto :goto_e

    .line 598
    .restart local v8    # "file":Ljava/io/File;
    .restart local v19    # "prevFilePath":Ljava/lang/String;
    .restart local v20    # "prevFileSize":J
    .restart local v26    # "prevTime":J
    :catch_0
    move-exception v28

    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_5

    :catch_1
    move-exception v28

    goto/16 :goto_5

    .line 578
    .end local v26    # "prevTime":J
    :catch_2
    move-exception v28

    goto/16 :goto_1

    .end local v7    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    :catch_3
    move-exception v28

    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_1

    .end local v7    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v26    # "prevTime":J
    :cond_21
    move-object v7, v8

    .end local v8    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v26    # "prevTime":J
    :cond_22
    move-object v8, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto/16 :goto_2
.end method

.method protected setupSize(Landroid/database/Cursor;[I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "result"    # [I

    .prologue
    const/4 v2, 0x0

    .line 735
    const-string v0, "width"

    invoke-static {p1, v0, v2}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    aput v0, p2, v2

    .line 736
    const/4 v0, 0x1

    const-string v1, "height"

    invoke-static {p1, v1, v2}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    aput v1, p2, v0

    .line 737
    return-void
.end method

.method protected setupTakenTime(Landroid/database/Cursor;)J
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 747
    const-string v0, "datetaken"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public shouldIgnoreThumbnailUpdate()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_IgnoreThumbnailUpdate:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", File = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "info"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery/media/MediaStoreMedia;->onUpdate(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Z)Z

    move-result v0

    return v0
.end method
