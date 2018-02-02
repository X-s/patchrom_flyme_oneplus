.class public Lcom/oneplus/camera/io/BurstPhotoSaveTask;
.super Lcom/oneplus/camera/io/PhotoSaveTask;
.source "BurstPhotoSaveTask.java"


# instance fields
.field private final m_BurstTime:J

.field private m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;JI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .param p4, "burstTime"    # J
    .param p6, "frameIndex"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 38
    iput-wide p4, p0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->m_BurstTime:J

    .line 39
    iput-object p1, p0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->m_Context:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, p6}, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->setFrameIndex(I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onGenerateFilePath()Ljava/lang/String;
    .locals 18

    .prologue
    .line 48
    new-instance v3, Ljava/io/File;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->getDcimPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string/jumbo v13, "Camera"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static {v12}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, "directory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 55
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->getFrameIndex()I

    move-result v12

    add-int/lit8 v5, v12, 0x1

    .line 57
    .local v5, "fileIndex":I
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IMG_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->m_BurstTime:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "%03d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "targetPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 63
    const-string/jumbo v7, ""

    .line 64
    .local v7, "newFileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 65
    .local v6, "newFile":Ljava/io/File;
    const/4 v8, 0x1

    .line 67
    .end local v6    # "newFile":Ljava/io/File;
    .local v8, "suffix":I
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IMG_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->m_BurstTime:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "%03d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "%02d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v6, "newFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 72
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 75
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v12, "_data"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v14, "_data = ? "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 78
    .local v10, "updateRow":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onGenerateFilePath() - updateRow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "newFileName":Ljava/lang/String;
    .end local v8    # "suffix":I
    .end local v10    # "updateRow":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onGenerateFilePath() - Write picture to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object v9

    .line 51
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileIndex":I
    .end local v9    # "targetPath":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/io/BurstPhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onGenerateFilePath() - Fail to create "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v12, 0x0

    return-object v12

    .line 65
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileIndex":I
    .restart local v6    # "newFile":Ljava/io/File;
    .restart local v7    # "newFileName":Ljava/lang/String;
    .restart local v8    # "suffix":I
    .restart local v9    # "targetPath":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "parentFlags":I
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/io/PhotoSaveTask;->onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string/jumbo v2, "oneplus_flags"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    .end local v0    # "flags":Ljava/lang/Integer;
    :cond_0
    const-string/jumbo v2, "oneplus_flags"

    const/high16 v3, 0x20000

    or-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const/4 v2, 0x1

    return v2
.end method
