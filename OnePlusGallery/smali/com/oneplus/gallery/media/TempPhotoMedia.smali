.class final Lcom/oneplus/gallery/media/TempPhotoMedia;
.super Lcom/oneplus/gallery/media/TempMedia;
.source "TempPhotoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/PhotoMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/TempPhotoMedia$TempPhotoDetails;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private final m_Height:I

.field private final m_Orientation:I

.field private m_TakenTime:J

.field private final m_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oneplus/gallery/media/TempPhotoMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/TempPhotoMedia;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 61
    sget-object v2, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/TempMedia;-><init>(Lcom/oneplus/gallery/media/MediaType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 63
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Context:Landroid/content/Context;

    .line 66
    if-nez p2, :cond_0

    if-eqz p3, :cond_7

    .line 68
    :cond_0
    const/4 v12, 0x0

    .line 69
    .local v12, "width":I
    const/4 v8, 0x0

    .line 70
    .local v8, "height":I
    new-instance v9, Lcom/oneplus/base/SimpleRef;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 71
    .local v9, "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v11, "stream":Ljava/io/InputStream;
    :goto_0
    const/4 v2, 0x0

    .line 73
    :try_start_1
    invoke-static {v11, v9}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Landroid/util/Size;

    move-result-object v10

    .line 74
    .local v10, "size":Landroid/util/Size;
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    .line 75
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    .line 76
    if-eqz v11, :cond_1

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    .end local v10    # "size":Landroid/util/Size;
    .end local v11    # "stream":Ljava/io/InputStream;
    :cond_1
    :goto_1
    iput v12, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Width:I

    .line 85
    iput v8, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Height:I

    .line 86
    invoke-interface {v9}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Orientation:I

    .line 94
    .end local v8    # "height":I
    .end local v9    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .end local v12    # "width":I
    :goto_2
    return-void

    .line 71
    .restart local v8    # "height":I
    .restart local v9    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .restart local v12    # "width":I
    :cond_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    goto :goto_0

    .line 76
    .restart local v10    # "size":Landroid/util/Size;
    .restart local v11    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 77
    .end local v10    # "size":Landroid/util/Size;
    .end local v11    # "stream":Ljava/io/InputStream;
    .end local v13    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 79
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz p3, :cond_6

    .line 80
    sget-object v1, Lcom/oneplus/gallery/media/TempPhotoMedia;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 76
    .end local v7    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "size":Landroid/util/Size;
    .restart local v11    # "stream":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 71
    .end local v10    # "size":Landroid/util/Size;
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_3
    if-eqz v11, :cond_4

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_4
    :try_start_7
    throw v1

    :catch_3
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 82
    .end local v11    # "stream":Ljava/io/InputStream;
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_6
    sget-object v1, Lcom/oneplus/gallery/media/TempPhotoMedia;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when open content Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 90
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v8    # "height":I
    .end local v9    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .end local v12    # "width":I
    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Width:I

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Height:I

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Orientation:I

    goto :goto_2

    .line 76
    .restart local v8    # "height":I
    .restart local v9    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .restart local v11    # "stream":Ljava/io/InputStream;
    .restart local v12    # "width":I
    :catchall_1
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method protected getDetails()Lcom/oneplus/gallery/media/MediaDetails;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 104
    .local v2, "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    :try_start_0
    iget-object v9, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/TempPhotoMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .local v5, "stream":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 106
    :try_start_1
    invoke-static {v5}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;

    move-result-object v4

    .line 107
    .local v4, "metadata":Lcom/oneplus/media/PhotoMetadata;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v6, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    if-eqz v4, :cond_4

    .line 111
    sget-object v9, Lcom/oneplus/media/Metadata;->PROP_DATE_TIME_ORIGINAL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v9}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_TakenTime:J

    .line 114
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_APERTURE:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v11, Lcom/oneplus/media/PhotoMetadata;->PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_CAMERA_MANUFACTURER:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v11, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_CAMERA_MODEL:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v11, Lcom/oneplus/media/PhotoMetadata;->PROP_MODEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_FOCAL_LENGTH:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v11, Lcom/oneplus/media/PhotoMetadata;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v9, Lcom/oneplus/media/PhotoMetadata;->PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v9}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/media/FlashData;

    .line 125
    .local v1, "flashData":Lcom/oneplus/media/FlashData;
    if-eqz v1, :cond_0

    .line 126
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_IS_FLASH_FIRED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    invoke-virtual {v1}, Lcom/oneplus/media/FlashData;->isFlashFired()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_ISO_SPEED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v11, Lcom/oneplus/media/PhotoMetadata;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v9, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_SHUTTER_SPEED:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v11, Lcom/oneplus/media/PhotoMetadata;->PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v11}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v9, Lcom/oneplus/media/PhotoMetadata;->PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v9}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    .line 136
    .local v7, "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    if-eqz v7, :cond_1

    .line 137
    sget-object v11, Lcom/oneplus/gallery/media/PhotoMediaDetails;->KEY_WHITE_BALANCE:Lcom/oneplus/gallery/media/MediaDetails$Key;

    sget-object v9, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    if-ne v7, v9, :cond_3

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v1    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v7    # "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    :cond_1
    :goto_1
    new-instance v3, Lcom/oneplus/gallery/media/TempPhotoMedia$TempPhotoDetails;

    invoke-direct {v3, v6}, Lcom/oneplus/gallery/media/TempPhotoMedia$TempPhotoDetails;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .end local v2    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    .local v3, "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    if-eqz v5, :cond_2

    if-eqz v10, :cond_6

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    move-object v2, v3

    .line 151
    .end local v3    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    .end local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .end local v5    # "stream":Ljava/io/InputStream;
    .end local v6    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    .restart local v2    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    :goto_3
    return-object v2

    .line 137
    .restart local v1    # "flashData":Lcom/oneplus/media/FlashData;
    .restart local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .restart local v5    # "stream":Ljava/io/InputStream;
    .restart local v6    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    .restart local v7    # "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 141
    .end local v1    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v7    # "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    :cond_4
    :try_start_3
    sget-object v9, Lcom/oneplus/gallery/media/TempPhotoMedia;->TAG:Ljava/lang/String;

    const-string v11, "getDetails() - metadata is null."

    invoke-static {v9, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 104
    .end local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .end local v6    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    :catch_0
    move-exception v9

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    :catchall_0
    move-exception v10

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :goto_4
    if-eqz v5, :cond_5

    if-eqz v10, :cond_7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_5
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 147
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Exception;
    :goto_6
    sget-object v9, Lcom/oneplus/gallery/media/TempPhotoMedia;->TAG:Ljava/lang/String;

    const-string v10, "getDetails() - exception:"

    invoke-static {v9, v10, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 146
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    .restart local v3    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    .restart local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .restart local v5    # "stream":Ljava/io/InputStream;
    .restart local v6    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    :catch_2
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 147
    .end local v8    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    .restart local v2    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    goto :goto_6

    .line 146
    .end local v2    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    .restart local v3    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    :cond_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .end local v3    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    .end local v4    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .end local v6    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    .restart local v2    # "mediaDetails":Lcom/oneplus/gallery/media/MediaDetails;
    :catch_4
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    :try_start_8
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :catchall_1
    move-exception v9

    goto :goto_4
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Height:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Orientation:I

    return v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_TakenTime:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/oneplus/gallery/media/TempPhotoMedia;->m_Width:I

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method
