.class Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;
.super Ljava/lang/Object;
.source "OnlineWatermarkControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessWatermarkTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_EndAction:Ljava/lang/Runnable;

.field private volatile m_IsCanceled:Z

.field private m_WatermarkInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->TAG:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_WatermarkInfos:Ljava/util/List;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;-><init>()V

    return-void
.end method


# virtual methods
.method addWatermarkInfo(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;)V
    .locals 1
    .param p1, "watermarkInfo"    # Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_WatermarkInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_IsCanceled:Z

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_IsCanceled:Z

    .line 128
    :cond_0
    return-void
.end method

.method public run()V
    .locals 23

    .prologue
    .line 139
    sget-object v3, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "run() - Start"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_IsCanceled:Z

    if-eqz v3, :cond_0

    .line 143
    return-void

    .line 146
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_WatermarkInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_9

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_WatermarkInfos:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;

    .line 150
    .local v18, "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    move-object/from16 v0, v18

    iget v13, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->rotateDegree:I

    .line 151
    .local v13, "rotateDegree":I
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 152
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->filePath:Ljava/lang/String;

    .line 155
    .local v10, "filePath":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 158
    .local v16, "time":J
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 159
    .local v7, "m":Landroid/graphics/Matrix;
    int-to-float v3, v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 160
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_IsCanceled:Z

    if-eqz v3, :cond_1

    .line 164
    return-void

    .line 166
    :cond_1
    sget-object v3, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "run() - Rotate watermark spents "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, " ms"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v16    # "time":J
    :cond_2
    if-eqz v2, :cond_8

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 201
    .restart local v16    # "time":J
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->bitmapToNV21(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    .line 202
    .local v12, "nv21BufferBytes":[B
    sget-object v3, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "run() - Convert ARGB to NV21 spents "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, " ms"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    const/4 v4, 0x0

    const/4 v14, 0x0

    .local v14, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "_nv21a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v15, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 212
    if-eqz v15, :cond_3

    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 210
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Throwable;
    move-object v14, v15

    .line 211
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    sget-object v3, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "run() - Cannot save nv21 to file"

    invoke-static {v3, v4, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v9    # "e":Ljava/lang/Throwable;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_IsCanceled:Z

    if-eqz v3, :cond_8

    .line 216
    return-void

    .line 212
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    goto :goto_1

    :cond_4
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .local v14, "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .local v14, "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_5
    if-eqz v14, :cond_5

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_6
    if-eqz v4, :cond_7

    :try_start_6
    throw v4

    .line 210
    :catch_3
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 212
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    if-nez v4, :cond_6

    move-object v4, v5

    goto :goto_6

    :cond_6
    if-eq v4, v5, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 146
    .end local v12    # "nv21BufferBytes":[B
    .end local v16    # "time":J
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 239
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v13    # "rotateDegree":I
    .end local v18    # "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_EndAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_a

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_EndAction:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 242
    :cond_a
    sget-object v3, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "run() - End"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 212
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "filePath":Ljava/lang/String;
    .restart local v12    # "nv21BufferBytes":[B
    .restart local v13    # "rotateDegree":I
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    .restart local v16    # "time":J
    .restart local v18    # "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    :catchall_1
    move-exception v3

    goto :goto_5

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .local v14, "stream":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method setEndAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->m_EndAction:Ljava/lang/Runnable;

    .line 247
    return-void
.end method
