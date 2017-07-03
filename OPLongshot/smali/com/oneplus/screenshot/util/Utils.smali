.class public Lcom/oneplus/screenshot/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd-HH-mm-ss"

.field public static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oneplus/screenshot/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/util/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(FF)I
    .locals 2
    .param p0, "scale"    # F
    .param p1, "dip"    # F

    .prologue
    .line 29
    mul-float v0, p1, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dumpView(Landroid/view/View;)Ljava/lang/String;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v3, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    .line 40
    .local v2, "id":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 42
    .local v5, "r":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 45
    const/high16 v7, -0x1000000

    and-int/2addr v7, v2

    sparse-switch v7, :sswitch_data_0

    .line 53
    :try_start_0
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "pkgname":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "typename":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "entryname":Ljava/lang/String;
    const-string v7, "["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "entryname":Ljava/lang/String;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "typename":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 47
    .restart local v5    # "r":Landroid/content/res/Resources;
    :sswitch_0
    :try_start_1
    const-string v4, "app"

    .line 48
    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_0

    .line 50
    .end local v4    # "pkgname":Ljava/lang/String;
    :sswitch_1
    const-string v4, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v4    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_1
        0x7f000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileInfo"    # Lcom/oneplus/screenshot/util/FileInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    if-nez p2, :cond_0

    .line 79
    const/16 v18, 0x0

    .line 136
    :goto_0
    return v18

    .line 81
    :cond_0
    const/16 v18, 0x0

    .line 82
    .local v18, "result":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 83
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 84
    .local v15, "outFile":Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 85
    .local v14, "inputStream":Ljava/io/InputStream;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v21, "values":Landroid/content/ContentValues;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getName()Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "fileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "filePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getTime()J

    move-result-wide v12

    .line 90
    .local v12, "fileTime":J
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    .line 92
    .local v17, "parent":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_1

    .line 93
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 95
    :cond_1
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v15    # "outFile":Ljava/io/OutputStream;
    .local v16, "outFile":Ljava/io/OutputStream;
    :try_start_1
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 97
    .local v4, "complete":Z
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 98
    const-string v22, "_data"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v22, "_display_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v22, "datetaken"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v22, "date_added"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string v22, "date_modified"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const-string v22, "mime_type"

    const-string v23, "image/png"

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v22, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v22, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    sget-object v22, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v20

    .line 108
    .local v20, "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/util/FileInfo;->setUri(Landroid/net/Uri;)V

    .line 109
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 110
    invoke-virtual {v14}, Ljava/io/InputStream;->available()I

    move-result v19

    .line 111
    .local v19, "size":I
    const-string v22, "_size"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v22

    const-string v23, "notifyMtp"

    const-string v24, "1"

    invoke-virtual/range {v22 .. v24}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    .line 113
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 115
    .local v8, "fileLength":J
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    const-wide/16 v22, 0x0

    cmp-long v22, v8, v22

    if-eqz v22, :cond_3

    :cond_2
    if-nez v4, :cond_6

    .line 116
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 117
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    :goto_1
    if-eqz v16, :cond_4

    .line 126
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 128
    :cond_4
    if-eqz v14, :cond_5

    .line 129
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :cond_5
    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v15, v16

    .line 135
    .end local v16    # "outFile":Ljava/io/OutputStream;
    .restart local v15    # "outFile":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 119
    .end local v15    # "outFile":Ljava/io/OutputStream;
    .restart local v16    # "outFile":Ljava/io/OutputStream;
    :cond_6
    const/16 v18, 0x1

    goto :goto_1

    .line 131
    :catch_0
    move-exception v6

    .line 132
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 121
    .end local v4    # "complete":Z
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileLength":J
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "fileTime":J
    .end local v16    # "outFile":Ljava/io/OutputStream;
    .end local v17    # "parent":Ljava/io/File;
    .end local v19    # "size":I
    .end local v20    # "uri":Landroid/net/Uri;
    .restart local v15    # "outFile":Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    .line 122
    .restart local v6    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    if-eqz v15, :cond_7

    .line 126
    :try_start_4
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 128
    :cond_7
    if-eqz v14, :cond_8

    .line 129
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 134
    :cond_8
    :goto_4
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_0

    .line 131
    :catch_2
    move-exception v6

    .line 132
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 124
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    .line 125
    :goto_5
    if-eqz v15, :cond_9

    .line 126
    :try_start_5
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 128
    :cond_9
    if-eqz v14, :cond_a

    .line 129
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 134
    :cond_a
    :goto_6
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    throw v22

    .line 131
    :catch_3
    move-exception v6

    .line 132
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 124
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v15    # "outFile":Ljava/io/OutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "filePath":Ljava/lang/String;
    .restart local v12    # "fileTime":J
    .restart local v16    # "outFile":Ljava/io/OutputStream;
    .restart local v17    # "parent":Ljava/io/File;
    :catchall_1
    move-exception v22

    move-object/from16 v15, v16

    .end local v16    # "outFile":Ljava/io/OutputStream;
    .restart local v15    # "outFile":Ljava/io/OutputStream;
    goto :goto_5

    .line 121
    .end local v15    # "outFile":Ljava/io/OutputStream;
    .restart local v16    # "outFile":Ljava/io/OutputStream;
    :catch_4
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "outFile":Ljava/io/OutputStream;
    .restart local v15    # "outFile":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public static scale(I)I
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 25
    return p0
.end method

.method public static setThreadPriority()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
