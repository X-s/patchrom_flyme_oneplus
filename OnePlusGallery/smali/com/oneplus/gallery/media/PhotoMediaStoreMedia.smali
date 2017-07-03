.class Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
.super Lcom/oneplus/gallery/media/MediaStoreMedia;
.source "PhotoMediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/PhotoMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/PhotoMediaStoreMedia$PhotoDetails;
    }
.end annotation


# static fields
.field private static final REGEX_BURST_FILE_NAME:Ljava/lang/String; = "_\\d{3}$"

.field private static final TAG:Ljava/lang/String; = "PhotoMediaStoreMedia"


# instance fields
.field private volatile m_IsPanorama:Z

.field private volatile m_Orientation:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getContentUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaStoreMedia;-><init>(Landroid/net/Uri;Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V

    .line 57
    return-void
.end method

.method public static getContentUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 67
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTakenTimeFromFile(Ljava/lang/String;)J
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 172
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->decodeTakenTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 173
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getDetails()Lcom/oneplus/gallery/media/MediaDetails;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "filePath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 82
    const-string v9, "PhotoMediaStoreMedia"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDetails() - No file path for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v9, 0x0

    .line 152
    :goto_0
    return-object v9

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 90
    const-string v9, "image/jpeg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 92
    const-string v9, "PhotoMediaStoreMedia"

    const-string v10, "getDetails() - Not a JPEG file"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v9, 0x0

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v1}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const/4 v9, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 104
    const-string v9, "PhotoMediaStoreMedia"

    const-string v10, "getDetails() - Not a JPEG file"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v9, 0x0

    goto :goto_0

    .line 98
    :sswitch_0
    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    :sswitch_1
    const-string v11, ".jpeg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    .line 111
    :cond_3
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .local v3, "input":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 113
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 114
    .local v4, "metadata":Lcom/oneplus/media/PhotoMetadata;
    if-eqz v3, :cond_4

    if-eqz v10, :cond_7

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_4
    :goto_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v6, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    if-eqz v4, :cond_6

    .line 125
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_APERTURE:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v10, Lcom/oneplus/media/PhotoMetadata;->PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v10}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_CAMERA_MANUFACTURER:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v10, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v10}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_CAMERA_MODEL:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v10, Lcom/oneplus/media/PhotoMetadata;->PROP_MODEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v10}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_FOCAL_LENGTH:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v10, Lcom/oneplus/media/PhotoMetadata;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v10}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v9, Lcom/oneplus/media/PhotoMetadata;->PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v9}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/media/FlashData;

    .line 136
    .local v2, "flashData":Lcom/oneplus/media/FlashData;
    if-eqz v2, :cond_5

    .line 137
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_IS_FLASH_FIRED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    invoke-virtual {v2}, Lcom/oneplus/media/FlashData;->isFlashFired()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_5
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_ISO_SPEED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v10, Lcom/oneplus/media/PhotoMetadata;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v10}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_SHUTTER_SPEED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v10, Lcom/oneplus/media/PhotoMetadata;->PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v10}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v9, Lcom/oneplus/media/PhotoMetadata;->PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v9}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    .line 147
    .local v7, "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    if-eqz v7, :cond_6

    .line 148
    sget-object v10, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_WHITE_BALANCE:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v9, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    if-ne v7, v9, :cond_a

    const/4 v9, 0x1

    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v2    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v7    # "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    :cond_6
    new-instance v9, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia$PhotoDetails;

    invoke-direct {v9, v6}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia$PhotoDetails;-><init>(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 114
    .end local v6    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 115
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .end local v8    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 118
    .restart local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    const-string v9, "PhotoMediaStoreMedia"

    const-string v10, "getDetails() - Error when get details"

    invoke-static {v9, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 114
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "input":Ljava/io/InputStream;
    :cond_7
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 111
    .end local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    :catch_2
    move-exception v10

    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_8

    if-eqz v10, :cond_9

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_4
    :try_start_7
    throw v9

    :catch_3
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 148
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "flashData":Lcom/oneplus/media/FlashData;
    .restart local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .restart local v6    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    .restart local v7    # "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x1684f3 -> :sswitch_0
        0x2ba1996 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->m_Orientation:I

    return v0
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    return-object v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->m_IsPanorama:Z

    return v0
.end method

.method protected onUpdate(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Z)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .param p3, "fromConstructor"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaStoreMedia;->onUpdate(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Z)Z

    move-result v0

    .line 201
    .local v0, "changed":Z
    if-eqz p2, :cond_0

    .line 204
    iget v1, p2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    .line 205
    .local v1, "opFlags":I
    iget-boolean v2, p0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->m_IsPanorama:Z

    .line 206
    .local v2, "prevPanoramaState":Z
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->m_IsPanorama:Z

    .line 207
    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 208
    iget-boolean v3, p0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->m_IsPanorama:Z

    if-eq v2, v3, :cond_2

    move v0, v4

    .line 212
    .end local v1    # "opFlags":I
    .end local v2    # "prevPanoramaState":Z
    :cond_0
    :goto_1
    return v0

    .restart local v1    # "opFlags":I
    .restart local v2    # "prevPanoramaState":Z
    :cond_1
    move v3, v5

    .line 206
    goto :goto_0

    :cond_2
    move v0, v5

    .line 208
    goto :goto_1
.end method

.method protected setupSize(Landroid/database/Cursor;[I)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "result"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 221
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 222
    .local v3, "tempSize":[I
    invoke-super {p0, p1, v3}, Lcom/oneplus/gallery/media/MediaStoreMedia;->setupSize(Landroid/database/Cursor;[I)V

    .line 225
    aget v4, v3, v6

    if-lez v4, :cond_0

    aget v4, v3, v7

    if-gtz v4, :cond_1

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 232
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 233
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 234
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 235
    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v5, v3, v4

    .line 236
    const/4 v4, 0x1

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    const-string v4, "orientation"

    invoke-static {p1, v4, v6}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->m_Orientation:I

    .line 247
    iget v4, p0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->m_Orientation:I

    sparse-switch v4, :sswitch_data_0

    .line 260
    :goto_1
    aget v4, v3, v6

    aput v4, p2, v6

    .line 261
    aget v4, v3, v7

    aput v4, p2, v7

    .line 262
    return-void

    .line 252
    :sswitch_0
    aget v2, v3, v6

    .line 253
    .local v2, "temp":I
    aget v4, v3, v7

    aput v4, v3, v6

    .line 254
    aput v2, v3, v7

    goto :goto_1

    .line 238
    .end local v2    # "temp":I
    .restart local v0    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method protected setupTakenTime(Landroid/database/Cursor;)J
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v8, 0x0

    .line 269
    invoke-super {p0, p1}, Lcom/oneplus/gallery/media/MediaStoreMedia;->setupTakenTime(Landroid/database/Cursor;)J

    move-result-wide v4

    .line 270
    .local v4, "takentime":J
    cmp-long v3, v4, v8

    if-gtz v3, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getTakenTimeFromFile(Ljava/lang/String;)J

    move-result-wide v4

    .line 284
    :cond_0
    :goto_0
    cmp-long v3, v4, v8

    if-gtz v3, :cond_1

    .line 286
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 291
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    return-wide v4

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 276
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 278
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->decodeTakenTime(Ljava/io/InputStream;)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "PhotoMediaStoreMedia"

    const-string v6, "setupTakenTime() FileNotFoundException "

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
