.class public Lcom/oneplus/camera/io/PhotoSaveTask;
.super Lcom/oneplus/camera/io/MediaSaveTask;
.source "PhotoSaveTask.java"


# static fields
.field private static final INTENT_NEW_PICTURE:Ljava/lang/String; = "com.oneplus.camera.intent.action.NEW_PICTURE"

.field private static final THUMBNAIL_SIZE:I = 0xc8


# instance fields
.field private m_Bitmap:Landroid/graphics/Bitmap;

.field protected final m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

.field private final m_Context:Landroid/content/Context;

.field private m_EncodedPicture:[B

.field private m_ExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSize:Ljava/lang/Long;

.field private final m_PictureId:Ljava/lang/String;

.field private final m_TakenTime:J

.field private m_YuvImage:Landroid/graphics/YuvImage;

.field private m_YuvImageBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/graphics/Bitmap;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 101
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/graphics/Bitmap;Ljava/util/Map;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/graphics/Bitmap;Ljava/util/Map;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/camera/CaptureHandle;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p4, "exifTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 106
    iput-object p3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 107
    iput-object p4, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/graphics/YuvImage;Landroid/graphics/Rect;Ljava/util/Map;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p6, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/camera/CaptureHandle;",
            "Landroid/graphics/YuvImage;",
            "Landroid/graphics/Rect;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "exifTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p6}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 112
    iput-object p3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    .line 113
    if-eqz p4, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImageBounds:Landroid/graphics/Rect;

    .line 114
    iput-object p5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    .line 109
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/io/MediaSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;)V

    .line 75
    iput-object p1, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    .line 76
    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clone()Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 79
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_PictureId:Ljava/lang/String;

    .line 80
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getTakenTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_TakenTime:J

    .line 72
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 85
    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_PictureId:Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_TakenTime:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[BLcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "encodedPicture"    # [B
    .param p4, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    .line 91
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[BLjava/util/Map;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[BLjava/util/Map;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "encodedPicture"    # [B
    .param p5, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/camera/CaptureHandle;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p4, "exifTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 96
    iput-object p3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    .line 97
    iput-object p4, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    .line 93
    return-void
.end method

.method private fillToExif()V
    .locals 20

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    const-string/jumbo v16, "ro.product.manufacturer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/oneplus/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 127
    .local v12, "make":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 128
    const-string/jumbo v16, "Make"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    const-string/jumbo v16, "ro.product.model"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/oneplus/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, "model":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 133
    const-string/jumbo v16, "Model"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_2
    const-string/jumbo v16, "ro.build.description"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/oneplus/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 137
    .local v14, "sw":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 138
    const-string/jumbo v16, "Software"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 142
    .local v9, "location":Landroid/location/Location;
    if-nez v9, :cond_4

    .line 143
    return-void

    .line 146
    :cond_4
    const-string/jumbo v16, "GPSLatitude"

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/io/PhotoSaveTask;->toTagGPSFormat(D)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v16, "GPSLongitude"

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/io/PhotoSaveTask;->toTagGPSFormat(D)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v9}, Landroid/location/Location;->hasAltitude()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 149
    const-string/jumbo v16, "GPSAltitude"

    invoke-virtual {v9}, Landroid/location/Location;->getAltitude()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_5
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    .line 151
    .local v10, "locationTime":J
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-lez v16, :cond_6

    .line 153
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v16, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .local v8, "formater":Ljava/text/SimpleDateFormat;
    const-string/jumbo v16, "UTC"

    invoke-static/range {v16 .. v16}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 157
    :try_start_0
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "dateTime":Ljava/lang/String;
    const-string/jumbo v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "dateTimes":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v4, v6, v16

    .line 160
    .local v4, "date":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v15, v6, v16

    .line 161
    .local v15, "time":Ljava/lang/String;
    const-string/jumbo v16, "GPSDateStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v16, "GPSTimeStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "fillToExif() - UTC date: "

    const-string/jumbo v18, ", time: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v4, v2, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v4    # "date":Ljava/lang/String;
    .end local v5    # "dateTime":Ljava/lang/String;
    .end local v6    # "dateTimes":[Ljava/lang/String;
    .end local v8    # "formater":Ljava/text/SimpleDateFormat;
    .end local v15    # "time":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void

    .line 166
    .restart local v8    # "formater":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v7

    .line 167
    .local v7, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "fillToExif() - Cannot insert location time"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPictureSize()Landroid/util/Size;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 262
    const/4 v4, 0x0

    .line 265
    .local v4, "pictureSize":Landroid/util/Size;
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 267
    new-instance v5, Landroid/util/Size;

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/util/Size;-><init>(II)V

    .local v5, "pictureSize":Landroid/util/Size;
    move-object v4, v5

    .line 307
    .end local v4    # "pictureSize":Landroid/util/Size;
    .end local v5    # "pictureSize":Landroid/util/Size;
    :cond_0
    :goto_0
    return-object v4

    .line 269
    .restart local v4    # "pictureSize":Landroid/util/Size;
    :cond_1
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_6

    .line 271
    const/4 v1, 0x0

    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    invoke-direct {v2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 273
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    const/16 v7, 0x20

    :try_start_2
    invoke-static {v2, v7}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;I)Landroid/util/Size;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v4

    .line 274
    .local v4, "pictureSize":Landroid/util/Size;
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 303
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "pictureSize":Landroid/util/Size;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getPictureSize() - Fail to get picture size "

    invoke-static {v7, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 274
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "pictureSize":Landroid/util/Size;
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v4, "pictureSize":Landroid/util/Size;
    :catch_2
    move-exception v7

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :goto_2
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    if-eqz v8, :cond_5

    :try_start_7
    throw v8

    :catch_3
    move-exception v9

    if-nez v8, :cond_4

    move-object v8, v9

    goto :goto_4

    :cond_4
    if-eq v8, v9, :cond_3

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v7

    .line 276
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    if-eqz v7, :cond_7

    .line 278
    new-instance v5, Landroid/util/Size;

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v7}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v8}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/util/Size;-><init>(II)V

    .restart local v5    # "pictureSize":Landroid/util/Size;
    move-object v4, v5

    .end local v5    # "pictureSize":Landroid/util/Size;
    .local v4, "pictureSize":Landroid/util/Size;
    goto :goto_0

    .line 280
    .local v4, "pictureSize":Landroid/util/Size;
    :cond_7
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v7, :cond_d

    .line 282
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 284
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v6

    .line 285
    .local v6, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v7

    const/16 v9, 0x100

    if-ne v7, v9, :cond_c

    if-eqz v6, :cond_c

    array-length v7, v6

    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    .line 287
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v3

    .line 288
    .local v3, "jpeg":[B
    const/4 v1, 0x0

    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_8
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 290
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    const/16 v7, 0x20

    :try_start_9
    invoke-static {v2, v7}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;I)Landroid/util/Size;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v4

    .line 291
    .local v4, "pictureSize":Landroid/util/Size;
    if-eqz v2, :cond_8

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_8
    :goto_5
    if-eqz v8, :cond_0

    :try_start_b
    throw v8
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :catch_4
    move-exception v8

    goto :goto_5

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v4, "pictureSize":Landroid/util/Size;
    :catch_5
    move-exception v7

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :goto_6
    :try_start_c
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_7
    if-eqz v1, :cond_9

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    :cond_9
    :goto_8
    if-eqz v8, :cond_b

    :try_start_e
    throw v8

    :catch_6
    move-exception v9

    if-nez v8, :cond_a

    move-object v8, v9

    goto :goto_8

    :cond_a
    if-eq v8, v9, :cond_9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    throw v7

    .line 294
    .end local v3    # "jpeg":[B
    :cond_c
    new-instance v5, Landroid/util/Size;

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/util/Size;-><init>(II)V

    .restart local v5    # "pictureSize":Landroid/util/Size;
    move-object v4, v5

    .end local v5    # "pictureSize":Landroid/util/Size;
    .local v4, "pictureSize":Landroid/util/Size;
    goto/16 :goto_0

    .line 299
    .end local v6    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .local v4, "pictureSize":Landroid/util/Size;
    :cond_d
    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getPictureSize() - No picture to get size"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 291
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "jpeg":[B
    .restart local v6    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    :catchall_2
    move-exception v7

    goto :goto_7

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_3
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 274
    .end local v3    # "jpeg":[B
    .end local v6    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_4
    move-exception v7

    goto/16 :goto_3

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_5
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_8
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_2
.end method

.method private getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 314
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 315
    return-object v9

    .line 317
    :cond_0
    const-string/jumbo v7, ""

    .line 319
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 320
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v8, "android.os.SystemProperties"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 324
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Class;

    .line 325
    .local v5, "paramTypes":[Ljava/lang/Class;
    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    .line 327
    const-string/jumbo v8, "get"

    invoke-virtual {v0, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 330
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 331
    .local v6, "params":[Ljava/lang/Object;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aput-object v8, v6, v9

    .line 333
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ret":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v0    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    .end local v6    # "params":[Ljava/lang/Object;
    .restart local v7    # "ret":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 337
    .end local v7    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, ""

    .restart local v7    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 335
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "ret":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 336
    .local v4, "iAE":Ljava/lang/IllegalArgumentException;
    throw v4
.end method

.method private insertTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    return-void
.end method

.method private toTagGPSFormat(D)Ljava/lang/String;
    .locals 13
    .param p1, "value"    # D

    .prologue
    .line 681
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, "result":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 683
    return-object v6

    .line 684
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    .line 685
    .local v7, "strValue":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 688
    .local v3, "index":I
    if-ltz v3, :cond_2

    .line 690
    const/4 v0, 0x1

    .line 691
    .local v0, "d":I
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v3, :cond_1

    const v8, 0xf4240

    if-ge v0, v8, :cond_1

    .line 692
    mul-int/lit8 v0, v0, 0xa

    .line 691
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 693
    :cond_1
    int-to-double v8, v0

    mul-double/2addr v8, p1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v4, v8

    .line 694
    .local v4, "n":I
    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, v4, v0}, Landroid/util/Rational;-><init>(II)V

    .line 695
    .local v5, "rational":Landroid/util/Rational;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",0/1,0/1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 702
    .end local v0    # "d":I
    .end local v2    # "i":I
    .end local v4    # "n":I
    :goto_1
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "toTagGPSFormat() - Converted value : "

    invoke-static {v8, v9, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    return-object v6

    .line 699
    .end local v5    # "rational":Landroid/util/Rational;
    :cond_2
    invoke-static {v7}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v5

    .line 700
    .restart local v5    # "rational":Landroid/util/Rational;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",0/1,0/1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 706
    .end local v5    # "rational":Landroid/util/Rational;
    :catch_0
    move-exception v1

    .line 707
    .local v1, "ex":Ljava/lang/Throwable;
    return-object v6
.end method


# virtual methods
.method public getEncodedPicture()[B
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    return-object v0
.end method

.method public getMediaSize()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 221
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 225
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6

    .line 227
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    array-length v3, v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    goto :goto_0

    .line 229
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    if-eqz v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    iget-object v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v6}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v6

    mul-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    goto :goto_0

    .line 231
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v3, :cond_5

    .line 233
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v2

    .line 234
    .local v2, "planes":[Lcom/oneplus/camera/media/ImagePlane;
    const-wide/16 v4, 0x0

    .line 235
    .local v4, "size":J
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 236
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 235
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 237
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    .end local v2    # "planes":[Lcom/oneplus/camera/media/ImagePlane;
    .end local v4    # "size":J
    :cond_5
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public getPictureId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_PictureId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 184
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 185
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v5

    .line 187
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getThumbnail() - Step getThumbnail decode memory start"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    .local v2, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 189
    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 190
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/16 v8, 0xc8

    const/16 v9, 0xc8

    const/4 v10, 0x1

    invoke-static {v5, v7, v8, v9, v10}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v4

    .line 191
    .local v4, "size":Landroid/util/Size;
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    .end local v4    # "size":Landroid/util/Size;
    :goto_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    :goto_1
    if-eqz v6, :cond_a

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 208
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 209
    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getThumbnail() - Fail to write "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 211
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getThumbnail() - Step getThumbnail decode memory end"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_3
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v5

    .line 192
    .restart local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    if-eqz v5, :cond_4

    .line 193
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    const/16 v7, 0xc8

    const/16 v8, 0xc8

    invoke-static {v5, v7, v8}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 212
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_4
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v6

    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    :goto_5
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_6
    if-eqz v6, :cond_9

    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 208
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 194
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_9
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    if-eqz v5, :cond_5

    .line 195
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImageBounds:Landroid/graphics/Rect;

    const/16 v8, 0x5a

    invoke-virtual {v5, v7, v8, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 196
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 197
    .local v0, "bitmapdata":[B
    const/16 v5, 0xc8

    const/16 v7, 0xc8

    invoke-static {v0, v5, v7}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 212
    .end local v0    # "bitmapdata":[B
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 198
    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_5
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v5, :cond_7

    .line 199
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v5

    const/16 v7, 0x100

    if-ne v5, v7, :cond_6

    .line 200
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v0

    .line 201
    .restart local v0    # "bitmapdata":[B
    const/16 v5, 0xc8

    const/16 v7, 0xc8

    invoke-static {v0, v5, v7}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 203
    .end local v0    # "bitmapdata":[B
    :cond_6
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getThumbnail() - Unknown picture format : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_7
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getThumbnail() - No picture to save"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 212
    :catch_3
    move-exception v6

    goto/16 :goto_1

    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v7

    if-nez v6, :cond_8

    move-object v6, v7

    goto :goto_6

    :cond_8
    if-eq v6, v7, :cond_3

    :try_start_a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_6

    .line 210
    :catchall_2
    move-exception v5

    .line 211
    :goto_7
    iget-object v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getThumbnail() - Step getThumbnail decode memory end"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    throw v5

    .line 212
    :cond_9
    :try_start_b
    throw v5
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 211
    .restart local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_a
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getThumbnail() - Step getThumbnail decode memory end"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3

    .line 210
    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v5

    move-object v2, v3

    .end local v3    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 212
    .local v2, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v5

    goto/16 :goto_5

    :catch_5
    move-exception v5

    goto/16 :goto_4
.end method

.method public insertToMediaStore()Z
    .locals 5

    .prologue
    .line 360
    invoke-super {p0}, Lcom/oneplus/camera/io/MediaSaveTask;->insertToMediaStore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    const/4 v3, 0x0

    return v3

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 365
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "isServiceMode":Z
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    instance-of v3, v3, Lcom/oneplus/camera/CameraActivity;

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    check-cast v3, Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    .line 373
    .end local v2    # "isServiceMode":Z
    :cond_1
    if-nez v2, :cond_3

    .line 375
    new-instance v1, Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_4

    const-string/jumbo v3, "android.hardware.action.NEW_PICTURE"

    :goto_0
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 377
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    instance-of v3, v3, Lcom/oneplus/camera/CameraActivity;

    if-eqz v3, :cond_2

    .line 378
    const-string/jumbo v4, "CameraActivity.InstanceId"

    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    check-cast v3, Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 375
    :cond_4
    const-string/jumbo v3, "com.oneplus.camera.intent.action.NEW_PICTURE"

    goto :goto_0
.end method

.method protected onGenerateFilePath(Z)Ljava/lang/String;
    .locals 14
    .param p1, "checkExistentFile"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 392
    new-instance v4, Ljava/io/File;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getDcimPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    const-string/jumbo v9, ""

    aput-object v9, v8, v13

    invoke-static {v8}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v4, "directory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 398
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    iget-wide v10, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_TakenTime:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "dateTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getFilePathSuffix()Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "suffix":Ljava/lang/String;
    if-nez v7, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IMG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "name":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v5, "file":Ljava/io/File;
    if-eqz p1, :cond_4

    .line 405
    const/4 v0, 0x1

    .line 406
    .local v0, "autoNum":I
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 408
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%02d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "autoNumStr":Ljava/lang/String;
    if-nez v7, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IMG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 410
    :goto_2
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .restart local v5    # "file":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "autoNum":I
    .end local v1    # "autoNumStr":Ljava/lang/String;
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "suffix":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onGenerateFilePath() - Fail to create "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-object v11

    .line 401
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v3    # "dateTime":Ljava/lang/String;
    .restart local v7    # "suffix":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IMG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 409
    .restart local v0    # "autoNum":I
    .restart local v1    # "autoNumStr":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IMG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 414
    .end local v0    # "autoNum":I
    .end local v1    # "autoNumStr":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onGenerateFilePath() - File path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method protected onImageEncoded(Lcom/oneplus/media/EncodedImage;)V
    .locals 0
    .param p1, "image"    # Lcom/oneplus/media/EncodedImage;

    .prologue
    .line 423
    return-void
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 432
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInsertToMediaStore() - File path: "

    const-string/jumbo v5, ", prepared values: "

    invoke-static {v3, v4, p1, v5, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 435
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 448
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 456
    return-object v2

    .line 442
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 443
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInsertToMediaStore() - Fail to insert"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 444
    return-object v6

    .line 447
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 448
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 447
    throw v3

    .line 453
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInsertToMediaStore() - Fail to acquire client"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-object v6
.end method

.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    .line 466
    invoke-virtual {p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getLensFacing()Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_0

    .line 468
    const-string/jumbo v0, "oneplus_flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    return v2

    .line 471
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 480
    const-string/jumbo v4, "title"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string/jumbo v4, "description"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v4, "mime_type"

    const-string/jumbo v5, "image/jpeg"

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 490
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 492
    const-string/jumbo v4, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 493
    const-string/jumbo v4, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 494
    const-string/jumbo v4, "datetaken"

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    iget-object v4, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPrepareMediaStoreValues() - Taken time: "

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getPictureSize()Landroid/util/Size;

    move-result-object v3

    .line 500
    .local v3, "pictureSize":Landroid/util/Size;
    if-eqz v3, :cond_1

    .line 502
    const-string/jumbo v4, "width"

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    const-string/jumbo v4, "height"

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    :cond_1
    const/4 v2, 0x0

    .line 508
    .local v2, "orientation":I
    iget-object v4, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 510
    iget-object v4, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    const-string/jumbo v5, "Orientation"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .local v0, "exifOrientation":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 513
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 514
    const/16 v2, 0x5a

    .line 519
    :cond_2
    :goto_0
    const-string/jumbo v4, "orientation"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    .end local v0    # "exifOrientation":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v4, "_data"

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v4, 0x1

    return v4

    .line 515
    .restart local v0    # "exifOrientation":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 516
    const/16 v2, 0xb4

    goto :goto_0

    .line 517
    :cond_5
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    const/16 v2, 0x10e

    goto :goto_0

    .line 524
    .end local v0    # "exifOrientation":Ljava/lang/String;
    :cond_6
    invoke-static {p1}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/lang/String;)I

    move-result v2

    .line 525
    const-string/jumbo v4, "orientation"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 23
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "onSaveToFile()"

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v5, "file":Ljava/io/File;
    const/16 v19, 0x0

    const/4 v13, 0x0

    .local v13, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 547
    .end local v13    # "stream":Ljava/io/FileOutputStream;
    .local v14, "stream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 548
    .local v6, "imageBytes":[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v17, :cond_6

    .line 550
    const/16 v18, 0x0

    const/4 v10, 0x0

    .local v10, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 552
    .end local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v11, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x5a

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 553
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    move-result-object v6

    .line 554
    .local v6, "imageBytes":[B
    if-eqz v11, :cond_0

    :try_start_4
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :goto_0
    if-eqz v18, :cond_7

    :try_start_5
    throw v18
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 644
    .end local v6    # "imageBytes":[B
    .end local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v17

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_6
    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v18

    move-object/from16 v22, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v22

    :goto_2
    if-eqz v13, :cond_1

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_10

    :cond_1
    :goto_3
    if-eqz v18, :cond_22

    :try_start_8
    throw v18
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 639
    :catch_1
    move-exception v3

    .line 640
    .local v3, "ex":Ljava/lang/Throwable;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onSaveToFile() - Fail to write "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/camera/CameraCaptureEventArgs;->recycle()V

    .line 643
    :cond_2
    const/16 v17, 0x0

    return v17

    .line 554
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "imageBytes":[B
    .restart local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v18

    goto :goto_0

    .end local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v6, "imageBytes":[B
    .restart local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v17

    .end local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_5
    :try_start_9
    throw v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v18

    move-object/from16 v22, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v22

    :goto_6
    if-eqz v10, :cond_3

    :try_start_a
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_3
    :goto_7
    if-eqz v18, :cond_5

    :try_start_b
    throw v18

    .line 644
    .end local v6    # "imageBytes":[B
    :catchall_2
    move-exception v17

    move-object/from16 v18, v19

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .local v13, "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 554
    .end local v13    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "imageBytes":[B
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v20

    if-nez v18, :cond_4

    move-object/from16 v18, v20

    goto :goto_7

    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_5
    throw v17

    .line 556
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 557
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    .line 581
    .local v6, "imageBytes":[B
    :cond_7
    :goto_8
    if-eqz v6, :cond_8

    array-length v0, v6

    move/from16 v17, v0

    if-nez v17, :cond_17

    .line 583
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "onSaveToFile() - Empty jpeg data"

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 584
    const/16 v17, 0x0

    .line 644
    if-eqz v14, :cond_9

    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    :cond_9
    :goto_9
    if-eqz v19, :cond_16

    :try_start_d
    throw v19
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 639
    .end local v6    # "imageBytes":[B
    :catch_5
    move-exception v3

    .restart local v3    # "ex":Ljava/lang/Throwable;
    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .restart local v13    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 558
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v13    # "stream":Ljava/io/FileOutputStream;
    .local v6, "imageBytes":[B
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :cond_a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    move-object/from16 v17, v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v17, :cond_f

    .line 560
    const/16 v18, 0x0

    const/4 v10, 0x0

    .restart local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_f
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 562
    .end local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_YuvImageBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const/16 v21, 0x5a

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v11}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 563
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_14
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-result-object v6

    .line 564
    .local v6, "imageBytes":[B
    if-eqz v11, :cond_b

    :try_start_11
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_b
    :goto_a
    if-eqz v18, :cond_7

    :try_start_12
    throw v18
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catch_6
    move-exception v18

    goto :goto_a

    .end local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v6, "imageBytes":[B
    .restart local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v17

    .end local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_b
    :try_start_13
    throw v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :catchall_3
    move-exception v18

    move-object/from16 v22, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v22

    :goto_c
    if-eqz v10, :cond_c

    :try_start_14
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :cond_c
    :goto_d
    if-eqz v18, :cond_e

    :try_start_15
    throw v18

    :catch_8
    move-exception v20

    if-nez v18, :cond_d

    move-object/from16 v18, v20

    goto :goto_d

    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_e
    throw v17

    .line 566
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v17

    const/16 v18, 0x100

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    .local v6, "imageBytes":[B
    goto/16 :goto_8

    .line 572
    .local v6, "imageBytes":[B
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onSaveToFile() - Unknown picture format : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 573
    const/16 v17, 0x0

    .line 644
    if-eqz v14, :cond_11

    :try_start_16
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    :cond_11
    :goto_e
    if-eqz v19, :cond_12

    :try_start_17
    throw v19
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_5

    :catch_9
    move-exception v19

    goto :goto_e

    .line 573
    :cond_12
    return v17

    .line 578
    :cond_13
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onSaveToFile() - No picture to save "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 579
    const/16 v17, 0x0

    .line 644
    if-eqz v14, :cond_14

    :try_start_19
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a

    :cond_14
    :goto_f
    if-eqz v19, :cond_15

    :try_start_1a
    throw v19
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_5

    :catch_a
    move-exception v19

    goto :goto_f

    .line 579
    :cond_15
    return v17

    .line 644
    .local v6, "imageBytes":[B
    :catch_b
    move-exception v19

    goto/16 :goto_9

    .line 584
    :cond_16
    return v17

    .line 588
    :cond_17
    const/16 v18, 0x0

    const/4 v7, 0x0

    .local v7, "imageStream":Ljava/io/ByteArrayInputStream;
    :try_start_1b
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_13
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 590
    .end local v7    # "imageStream":Ljava/io/ByteArrayInputStream;
    .local v8, "imageStream":Ljava/io/ByteArrayInputStream;
    :try_start_1c
    invoke-static {v6}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 593
    invoke-static {v8}, Lcom/oneplus/media/JfifImage;->create(Ljava/io/InputStream;)Lcom/oneplus/media/JfifImage;

    move-result-object v9

    .line 596
    .local v9, "jfifImage":Lcom/oneplus/media/JfifImage;
    sget-object v17, Lcom/oneplus/media/OnePlusXMP;->KEY_CAPTURE_MODE:Lcom/oneplus/media/XMPPropertyKey;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/camera/CaptureHandle;->getCaptureMode()Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v20

    sget-object v21, Lcom/oneplus/camera/capturemode/CaptureMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface/range {v20 .. v21}, Lcom/oneplus/camera/capturemode/CaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 599
    const/4 v12, 0x0

    .line 600
    .local v12, "sceneMode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getSceneMode()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 615
    .end local v12    # "sceneMode":Ljava/lang/String;
    :goto_10
    sget-object v17, Lcom/oneplus/media/OnePlusXMP;->KEY_SCENE:Lcom/oneplus/media/XMPPropertyKey;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v12}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 618
    sget-object v17, Lcom/oneplus/media/OnePlusXMP;->KEY_IS_HDR_ACTIVE:Lcom/oneplus/media/XMPPropertyKey;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->isHdrActive()Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getLensFacing()Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v17

    sget-object v20, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 622
    sget-object v17, Lcom/oneplus/media/OnePlusXMP;->KEY_LENS_FACING:Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v20, "Back"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 627
    :cond_18
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/oneplus/camera/io/PhotoSaveTask;->onImageEncoded(Lcom/oneplus/media/EncodedImage;)V

    .line 630
    invoke-virtual {v9, v14}, Lcom/oneplus/media/JfifImage;->save(Ljava/io/OutputStream;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 634
    .end local v9    # "jfifImage":Lcom/oneplus/media/JfifImage;
    :goto_12
    if-eqz v8, :cond_19

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :cond_19
    :goto_13
    if-eqz v18, :cond_1f

    :try_start_1e
    throw v18
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 603
    .restart local v9    # "jfifImage":Lcom/oneplus/media/JfifImage;
    .restart local v12    # "sceneMode":Ljava/lang/String;
    :sswitch_0
    :try_start_1f
    const-string/jumbo v12, "AutoHDR"

    .local v12, "sceneMode":Ljava/lang/String;
    goto :goto_10

    .line 606
    .local v12, "sceneMode":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v12, "HDR"

    .local v12, "sceneMode":Ljava/lang/String;
    goto :goto_10

    .line 609
    .local v12, "sceneMode":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v12, "FaceBeauty"

    .local v12, "sceneMode":Ljava/lang/String;
    goto :goto_10

    .line 612
    .local v12, "sceneMode":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v12, "ClearShot"

    .local v12, "sceneMode":Ljava/lang/String;
    goto :goto_10

    .line 623
    .end local v12    # "sceneMode":Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->getLensFacing()Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v17

    sget-object v20, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 624
    sget-object v17, Lcom/oneplus/media/OnePlusXMP;->KEY_LENS_FACING:Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v20, "Front"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    goto :goto_11

    .line 634
    .end local v9    # "jfifImage":Lcom/oneplus/media/JfifImage;
    :catch_c
    move-exception v17

    move-object v7, v8

    .end local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    :goto_14
    :try_start_20
    throw v17
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    :catchall_4
    move-exception v18

    move-object/from16 v22, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v22

    :goto_15
    if-eqz v7, :cond_1b

    :try_start_21
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_e
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :cond_1b
    :goto_16
    if-eqz v18, :cond_1e

    :try_start_22
    throw v18
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 633
    .restart local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    :cond_1c
    :try_start_23
    invoke-virtual {v14, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    goto :goto_12

    .line 634
    :catchall_5
    move-exception v17

    move-object v7, v8

    .end local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    .local v7, "imageStream":Ljava/io/ByteArrayInputStream;
    goto :goto_15

    .end local v7    # "imageStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    :catch_d
    move-exception v18

    goto :goto_13

    .end local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    :catch_e
    move-exception v20

    if-nez v18, :cond_1d

    move-object/from16 v18, v20

    goto :goto_16

    :cond_1d
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1b

    :try_start_24
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_1e
    throw v17

    .line 636
    .restart local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onSaveToFile() - Picture saved "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 644
    if-eqz v14, :cond_20

    :try_start_25
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_f

    :cond_20
    :goto_17
    if-eqz v19, :cond_23

    :try_start_26
    throw v19
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_5

    :catch_f
    move-exception v19

    goto :goto_17

    .end local v6    # "imageBytes":[B
    .end local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v19

    if-nez v18, :cond_21

    move-object/from16 v18, v19

    goto/16 :goto_3

    :cond_21
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    :try_start_27
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_22
    throw v17
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1

    .line 647
    .restart local v6    # "imageBytes":[B
    .restart local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    .line 648
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->fillToExif()V

    .line 651
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_26

    .line 667
    :cond_25
    :goto_18
    const/16 v17, 0x1

    return v17

    .line 655
    :cond_26
    :try_start_28
    new-instance v4, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 656
    .local v4, "exif":Landroid/media/ExifInterface;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "tag$iterator":Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_27

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 657
    .local v15, "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_11

    goto :goto_19

    .line 661
    .end local v4    # "exif":Landroid/media/ExifInterface;
    .end local v15    # "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "tag$iterator":Ljava/util/Iterator;
    :catch_11
    move-exception v3

    .line 662
    .restart local v3    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onSaveToFile() - Fail to update EXIF to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    const/16 v17, 0x0

    return v17

    .line 658
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "exif":Landroid/media/ExifInterface;
    .restart local v16    # "tag$iterator":Ljava/util/Iterator;
    :cond_27
    :try_start_29
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_11

    goto :goto_18

    .line 644
    .end local v4    # "exif":Landroid/media/ExifInterface;
    .end local v6    # "imageBytes":[B
    .end local v8    # "imageStream":Ljava/io/ByteArrayInputStream;
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "tag$iterator":Ljava/util/Iterator;
    .local v13, "stream":Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v17

    move-object/from16 v18, v19

    goto/16 :goto_2

    :catch_12
    move-exception v17

    goto/16 :goto_1

    .line 634
    .end local v13    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "imageBytes":[B
    .local v7, "imageStream":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :catchall_7
    move-exception v17

    goto/16 :goto_15

    :catch_13
    move-exception v17

    goto/16 :goto_14

    .line 564
    .end local v7    # "imageStream":Ljava/io/ByteArrayInputStream;
    .local v6, "imageBytes":[B
    .restart local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_8
    move-exception v17

    goto/16 :goto_c

    .end local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_9
    move-exception v17

    move-object v10, v11

    .end local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v10, "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_c

    .end local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_14
    move-exception v17

    move-object v10, v11

    .end local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_b

    .line 554
    .local v10, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_a
    move-exception v17

    goto/16 :goto_6

    .end local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_b
    move-exception v17

    move-object v10, v11

    .end local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .local v10, "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6

    .end local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_15
    move-exception v17

    move-object v10, v11

    .end local v11    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 600
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0xb -> :sswitch_3
        0x12 -> :sswitch_1
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method public setEncodedPicture([B)V
    .locals 0
    .param p1, "encodedPicture"    # [B

    .prologue
    .line 674
    iput-object p1, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    .line 672
    return-void
.end method
