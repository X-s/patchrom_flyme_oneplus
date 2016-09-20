.class public Lcom/oneplus/camera/io/PhotoSaveTask;
.super Lcom/oneplus/camera/io/MediaSaveTask;
.source "PhotoSaveTask.java"


# static fields
.field private static THUMBNAIL_SIZE:I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final args:Lcom/oneplus/camera/CameraCaptureEventArgs;

.field protected final context:Landroid/content/Context;

.field private encodedPicture:[B

.field private exifTags:Ljava/util/Map;
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

.field private m_Bitmap:Landroid/graphics/Bitmap;

.field private m_Location:Landroid/location/Location;

.field private final m_TakenTime:J

.field private yuvImage:Landroid/graphics/YuvImage;

.field private yuvImageBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xc8

    sput v0, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Landroid/graphics/Bitmap;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/location/Location;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .param p5, "location"    # Landroid/location/Location;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/location/Location;)V

    .line 69
    iput-object p3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->exifTags:Ljava/util/Map;

    .line 71
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

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p6, v0}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/location/Location;)V

    .line 76
    iput-object p3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->yuvImage:Landroid/graphics/YuvImage;

    .line 77
    if-eqz p4, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->yuvImageBounds:Landroid/graphics/Rect;

    .line 78
    iput-object p5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->exifTags:Ljava/util/Map;

    .line 79
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/location/Location;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .param p4, "location"    # Landroid/location/Location;

    .prologue
    .line 52
    invoke-direct {p0, p2}, Lcom/oneplus/camera/io/MediaSaveTask;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->context:Landroid/content/Context;

    .line 55
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clone()Lcom/oneplus/base/EventArgs;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    :goto_0
    iput-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 56
    iput-object p4, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_TakenTime:J

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[BLcom/oneplus/camera/CameraCaptureEventArgs;Landroid/location/Location;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "encodedPicture"    # [B
    .param p4, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .param p5, "location"    # Landroid/location/Location;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;Landroid/location/Location;)V

    .line 63
    iput-object p3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->encodedPicture:[B

    .line 64
    return-void
.end method

.method private fillToExif()V
    .locals 10

    .prologue
    .line 84
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->exifTags:Ljava/util/Map;

    if-nez v5, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v5, "ro.product.manufacturer"

    invoke-direct {p0, v5}, Lcom/oneplus/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "make":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 89
    const-string v5, "Make"

    invoke-direct {p0, v5, v1}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    const-string v5, "ro.product.model"

    invoke-direct {p0, v5}, Lcom/oneplus/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "model":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 93
    const-string v5, "Model"

    invoke-direct {p0, v5, v2}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_3
    const-string v5, "ro.build.description"

    invoke-direct {p0, v5}, Lcom/oneplus/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "sw":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 97
    const-string v5, "Software"

    invoke-direct {p0, v5, v3}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    if-eqz v5, :cond_0

    .line 103
    const-string v5, "GPSLatitude"

    iget-object v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v5, "GPSLongitude"

    iget-object v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasAltitude()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    const-string v5, "GPSAltitude"

    iget-object v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_5
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 110
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy:MM:dd"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "dateStamp":Ljava/text/SimpleDateFormat;
    const-string v5, "GPSDateStamp"

    iget-object v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, "timeStamp":Ljava/text/SimpleDateFormat;
    const-string v5, "GPSTimeStamp"

    iget-object v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/oneplus/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
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
    .line 153
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->context:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 154
    const/4 v7, 0x0

    .line 180
    :goto_0
    return-object v7

    .line 156
    :cond_0
    const-string v7, ""

    .line 158
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 159
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v8, "android.os.SystemProperties"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 163
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Class;

    .line 164
    .local v5, "paramTypes":[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    .line 166
    const-string v8, "get"

    invoke-virtual {v0, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 169
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 170
    .local v6, "params":[Ljava/lang/Object;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v8

    .line 172
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ret":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v7    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v0    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    .end local v6    # "params":[Ljava/lang/Object;
    .end local v7    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 175
    .local v4, "iAE":Ljava/lang/IllegalArgumentException;
    throw v4

    .line 176
    .end local v4    # "iAE":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, ""

    .restart local v7    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method private insertTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->exifTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 119
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 148
    :goto_0
    return-object v5

    .line 122
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "step getThumbnail decode memory start"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .local v2, "memoryStream":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 124
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 125
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    sget v9, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    const/4 v10, 0x1

    invoke-static {v5, v7, v8, v9, v10}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 126
    .local v3, "size":Landroid/util/Size;
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    .end local v3    # "size":Landroid/util/Size;
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v6, :cond_8

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 146
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "step getThumbnail decode memory end"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_3
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 127
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->encodedPicture:[B

    if-eqz v5, :cond_4

    .line 128
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->encodedPicture:[B

    sget v7, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    sget v8, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    invoke-static {v5, v7, v8}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 123
    :catch_0
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    :catchall_0
    move-exception v6

    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    :goto_4
    if-eqz v2, :cond_3

    if-eqz v6, :cond_9

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    :goto_5
    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_7
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getThumbnail() - Fail to write "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 146
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "step getThumbnail decode memory end"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 129
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_8
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->yuvImage:Landroid/graphics/YuvImage;

    if-eqz v5, :cond_5

    .line 130
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->yuvImage:Landroid/graphics/YuvImage;

    iget-object v7, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->yuvImageBounds:Landroid/graphics/Rect;

    const/16 v8, 0x5a

    invoke-virtual {v5, v7, v8, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 131
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 132
    .local v0, "bitmapdata":[B
    sget v5, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    sget v7, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    invoke-static {v0, v5, v7}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 143
    .end local v0    # "bitmapdata":[B
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 133
    :cond_5
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v5, :cond_7

    .line 134
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v5

    const/16 v7, 0x100

    if-ne v5, v7, :cond_6

    .line 135
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v0

    .line 136
    .restart local v0    # "bitmapdata":[B
    sget v5, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    sget v7, Lcom/oneplus/camera/io/PhotoSaveTask;->THUMBNAIL_SIZE:I

    invoke-static {v0, v5, v7}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 138
    .end local v0    # "bitmapdata":[B
    :cond_6
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getThumbnail() - Unknown picture format : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    :cond_7
    iget-object v5, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v7, "getThumbnail() - No picture to save"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 143
    :catch_2
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_2

    .line 146
    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v5

    iget-object v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v7, "step getThumbnail decode memory end"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 143
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_8
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_2

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_5
.end method

.method protected onGenerateFilePath()Ljava/lang/String;
    .locals 10

    .prologue
    .line 192
    invoke-static {}, Lcom/oneplus/io/Path;->getDefaultCameraFolder()Ljava/io/File;

    move-result-object v1

    .line 193
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    iget-object v4, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGenerateFilePath() - Fail to create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v4, 0x0

    .line 207
    :goto_0
    return-object v4

    .line 198
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_TakenTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x1

    .line 201
    .local v3, "suffix":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_TakenTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGenerateFilePath() - Write picture to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    .line 213
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInsertToMediaStore:  filePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preparedValues: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 216
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 217
    .local v1, "isServiceMode":Z
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->context:Landroid/content/Context;

    instance-of v3, v3, Lcom/oneplus/camera/CameraActivity;

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->context:Landroid/content/Context;

    check-cast v3, Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    .line 222
    :cond_0
    if-eqz v1, :cond_1

    .line 228
    :goto_0
    return-object v2

    .line 225
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    iget-object v3, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 234
    const-string v0, "title"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "description"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "mime_type"

    const-string v1, "image/jpeg"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 239
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 241
    :cond_0
    const-string v0, "_data"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 14
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v9, "onSaveToFile()"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .local v5, "stream":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 253
    :try_start_1
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_9

    .line 254
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v4, "memoryStream":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 256
    :try_start_2
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v8, v11, v12, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 257
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 258
    if-eqz v4, :cond_0

    if-eqz v9, :cond_6

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    .end local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    :try_start_4
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSaveToFile() - Picture saved "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    if-eqz v5, :cond_1

    if-eqz v10, :cond_10

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    .line 289
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->exifTags:Ljava/util/Map;

    if-eqz v8, :cond_2

    .line 290
    invoke-direct {p0}, Lcom/oneplus/camera/io/PhotoSaveTask;->fillToExif()V

    .line 293
    :cond_2
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->exifTags:Ljava/util/Map;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->exifTags:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    .line 297
    :try_start_6
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "exif":Landroid/media/ExifInterface;
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->exifTags:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 299
    .local v6, "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 302
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 304
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSaveToFile() - Fail to update EXIF to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const/4 v8, 0x0

    .line 309
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    return v8

    .line 258
    .restart local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 251
    .end local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v8

    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 280
    :catchall_0
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_4
    if-eqz v5, :cond_4

    if-eqz v9, :cond_11

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    :cond_4
    :goto_5
    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 281
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 283
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSaveToFile() - Fail to write "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v8, :cond_5

    .line 285
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraCaptureEventArgs;->recycle()V

    .line 286
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 258
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 280
    .end local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v9, v10

    goto :goto_4

    .line 254
    .restart local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v8

    :try_start_c
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 258
    :catchall_2
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_6
    if-eqz v4, :cond_7

    if-eqz v9, :cond_8

    :try_start_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_7
    :goto_7
    :try_start_e
    throw v8

    :catch_5
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_7

    .line 260
    .end local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_9
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->encodedPicture:[B

    if-eqz v8, :cond_a

    .line 261
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->encodedPicture:[B

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_0

    .line 262
    :cond_a
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->yuvImage:Landroid/graphics/YuvImage;

    if-eqz v8, :cond_b

    .line 263
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->yuvImage:Landroid/graphics/YuvImage;

    iget-object v9, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->yuvImageBounds:Landroid/graphics/Rect;

    const/16 v11, 0x5a

    invoke-virtual {v8, v9, v11, v5}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    goto/16 :goto_0

    .line 264
    :cond_b
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    if-eqz v8, :cond_e

    .line 266
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v8

    const/16 v9, 0x100

    if-ne v8, v9, :cond_c

    .line 267
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_0

    .line 270
    :cond_c
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSaveToFile() - Unknown picture format : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->args:Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {v11}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 271
    const/4 v8, 0x0

    .line 280
    if-eqz v5, :cond_3

    if-eqz v10, :cond_d

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_10
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_3

    .line 276
    :cond_e
    :try_start_11
    iget-object v8, p0, Lcom/oneplus/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSaveToFile() - No picture to save "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 277
    const/4 v8, 0x0

    .line 280
    if-eqz v5, :cond_3

    if-eqz v10, :cond_f

    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_13
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_3

    :catch_8
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1

    :catch_9
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_5

    .line 300
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_12
    :try_start_14
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    .line 309
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_13
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 258
    .restart local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v8

    goto/16 :goto_6
.end method
