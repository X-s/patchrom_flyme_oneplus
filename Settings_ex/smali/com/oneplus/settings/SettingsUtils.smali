.class public Lcom/oneplus/settings/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Opformat(J)D
    .locals 10
    .param p0, "size"    # J

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 84
    const-wide/16 v0, 0x0

    .line 85
    .local v0, "formatSize":D
    long-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 86
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    int-to-double v4, v3

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 87
    return-wide v0
.end method

.method public static getFormatSize(J)Ljava/lang/String;
    .locals 14
    .param p0, "size"    # J

    .prologue
    const/4 v4, 0x0

    .line 91
    const-wide/16 v10, 0x0

    cmp-long v5, v10, p0

    if-lez v5, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v4

    .line 94
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "#0.00"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "df":Ljava/text/DecimalFormat;
    if-eqz v2, :cond_0

    .line 98
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v5, "#0.00"

    invoke-direct {v3, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "df2":Ljava/text/DecimalFormat;
    if-eqz v3, :cond_0

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "formatSize":Ljava/lang/String;
    const-wide/16 v10, 0x400

    cmp-long v5, v10, p0

    if-lez v5, :cond_2

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "B"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 106
    :cond_2
    const-wide/32 v10, 0x100000

    cmp-long v5, v10, p0

    if-lez v5, :cond_3

    .line 107
    long-to-double v10, p0

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v0, v10, v12

    .line 108
    .local v0, "bytes":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "KB"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    goto :goto_0

    .end local v0    # "bytes":D
    :cond_3
    const-wide/32 v10, 0x40000000

    cmp-long v5, v10, p0

    if-lez v5, :cond_4

    .line 110
    long-to-double v10, p0

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double v8, v10, v12

    .line 111
    .local v8, "mbytes":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "MB"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    goto :goto_0

    .line 113
    .end local v8    # "mbytes":D
    :cond_4
    long-to-double v10, p0

    const-wide/high16 v12, 0x41d0000000000000L    # 1.073741824E9

    div-double v6, v10, v12

    .line 114
    .local v6, "gbytes":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "GB"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getMemoryStatus(Landroid/content/Context;)[Ljava/lang/String;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 25
    .local v13, "status":Ljava/lang/String;
    const-string v11, ""

    .line 26
    .local v11, "readOnly":Ljava/lang/String;
    const-string v17, ""

    .line 27
    .local v17, "total":Ljava/lang/String;
    const-string v4, ""

    .line 29
    .local v4, "available":Ljava/lang/String;
    const-string v21, "mounted_ro"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 30
    const-string v13, "mounted"

    .line 31
    const-string v11, "readOnly"

    .line 32
    const-string v21, "DeviceInfoShow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "readOnly = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 37
    .local v20, "values":[Ljava/lang/String;
    const-string v21, "mounted"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 39
    :try_start_0
    new-instance v21, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual/range {v21 .. v21}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 41
    .local v10, "path":Ljava/io/File;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 42
    .local v12, "stat":Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v8, v0

    .line 43
    .local v8, "blockSize":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 44
    .local v18, "totalBlocks":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v6, v0

    .line 45
    .local v6, "availableBlocks":J
    const-string v21, "DeviceInfoShow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getMemoryStatus blockSize = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",totalBlocks = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",availableBlocks = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    mul-long v22, v18, v8

    invoke-static/range {v22 .. v23}, Lcom/oneplus/settings/SettingsUtils;->Opformat(J)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, "strTotalSize":Ljava/lang/String;
    mul-long v22, v6, v8

    invoke-static/range {v22 .. v23}, Lcom/oneplus/settings/SettingsUtils;->getFormatSize(J)Ljava/lang/String;

    move-result-object v14

    .line 56
    .local v14, "strAvailable":Ljava/lang/String;
    mul-long v22, v18, v8

    mul-long v24, v6, v8

    sub-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Lcom/oneplus/settings/SettingsUtils;->getFormatSize(J)Ljava/lang/String;

    move-result-object v16

    .line 58
    .local v16, "strUesedSize":Ljava/lang/String;
    const-string v21, "DeviceInfoShow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getMemoryStatus strTotalSize = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",strAvailable = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",strUesedSize = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 61
    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 62
    const/16 v21, 0x2

    aput-object v16, v20, v21

    .line 63
    const-string v21, "DeviceInfoShow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getMemoryStatus values[0] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v23, v20, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",values[1] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v20, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v6    # "availableBlocks":J
    .end local v8    # "blockSize":J
    .end local v10    # "path":Ljava/io/File;
    .end local v12    # "stat":Landroid/os/StatFs;
    .end local v14    # "strAvailable":Ljava/lang/String;
    .end local v15    # "strTotalSize":Ljava/lang/String;
    .end local v16    # "strUesedSize":Ljava/lang/String;
    .end local v18    # "totalBlocks":J
    :goto_0
    return-object v20

    .line 65
    :catch_0
    move-exception v5

    .line 68
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 69
    const-string v21, "DeviceInfoShow"

    const-string v22, "SDcard is removed!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    .line 77
    const/16 v21, 0x1

    const-string v22, ""

    aput-object v22, v20, v21

    goto :goto_0
.end method

.method public static replacePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, ""

    .line 127
    .local v0, "dest":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 129
    const-string v3, "\\s*|\t|\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 130
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 131
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    return-object v0
.end method
