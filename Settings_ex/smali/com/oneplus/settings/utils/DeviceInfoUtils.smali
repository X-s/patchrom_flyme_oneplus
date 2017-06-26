.class public Lcom/oneplus/settings/utils/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# static fields
.field private static final CORE_NUM_DOUBLE:I = 0x2

.field private static final CORE_NUM_EIGHT:I = 0x8

.field private static final CORE_NUM_FOUR:I = 0x4

.field private static final CORE_NUM_SINGLE:I = 0x1

.field private static final OPPO_ROM_VERSION:Ljava/lang/String; = "ro.build.version.opporom"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMemoryDisplay(J)Ljava/lang/String;
    .locals 12
    .param p0, "size"    # J

    .prologue
    const-wide/16 v10, 0x200

    const/high16 v8, 0x3f000000    # 0.5f

    .line 146
    const-wide/16 v4, 0x400

    mul-long/2addr v4, p0

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    .line 147
    .local v0, "mega":J
    div-long v4, v0, v10

    long-to-int v3, v4

    .line 148
    .local v3, "mul":I
    rem-long v4, v0, v10

    long-to-int v2, v4

    .line 150
    .local v2, "modulus":I
    if-nez v3, :cond_0

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    :goto_0
    return-object v4

    .line 153
    :cond_0
    const/16 v4, 0x100

    if-le v2, v4, :cond_2

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 155
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v3

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 158
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v3

    mul-float/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 161
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v3

    mul-float/2addr v5, v8

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getCPUSize(J)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # J

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "cpuSize":Ljava/lang/String;
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v6, "#0.0"

    invoke-direct {v3, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .local v3, "df":Ljava/text/DecimalFormat;
    const-wide/16 v6, 0x3e8

    cmp-long v6, v6, p0

    if-lez v6, :cond_0

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "KHz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    :goto_0
    return-object v2

    .line 241
    :cond_0
    const-wide/32 v6, 0xf4240

    cmp-long v6, v6, p0

    if-lez v6, :cond_1

    .line 242
    long-to-double v6, p0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v0, v6, v8

    .line 243
    .local v0, "bytes":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MHz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    goto :goto_0

    .line 245
    .end local v0    # "bytes":D
    :cond_1
    long-to-double v6, p0

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double v4, v6, v8

    .line 246
    .local v4, "mbytes":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "GHz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getColorOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "romversion":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    const-string v0, "V1.0.0"

    .line 57
    :cond_1
    return-object v0
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 12

    .prologue
    .line 253
    const/4 v1, 0x0

    .line 255
    .local v1, "cpuName":Ljava/lang/String;
    const-string v6, "MSM\\s*\\w+"

    .line 258
    .local v6, "regEx":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v9, "/proc/cpuinfo"

    invoke-direct {v3, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 259
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "text":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 261
    const-string v9, "Hardware"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "MSM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 262
    const-string v9, "DeviceInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCpuName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 264
    .local v5, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 265
    .local v4, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    .line 266
    const-string v9, "DeviceInfoUtils"

    const-string v10, "!mat.find()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 273
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "mat":Ljava/util/regex/Matcher;
    .end local v5    # "pat":Ljava/util/regex/Pattern;
    .end local v8    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 274
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 278
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return-object v1

    .line 268
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "mat":Ljava/util/regex/Matcher;
    .restart local v5    # "pat":Ljava/util/regex/Pattern;
    .restart local v8    # "text":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, "str":Ljava/lang/String;
    const-string v9, "\\s*"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 275
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "mat":Ljava/util/regex/Matcher;
    .end local v5    # "pat":Ljava/util/regex/Pattern;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 276
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDDRMemorySize(J)D
    .locals 12
    .param p0, "size"    # J

    .prologue
    const-wide/16 v10, 0x200

    const/high16 v8, 0x3f000000    # 0.5f

    .line 167
    const-wide/16 v4, 0x400

    mul-long/2addr v4, p0

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    .line 168
    .local v0, "mega":J
    div-long v4, v0, v10

    long-to-int v3, v4

    .line 169
    .local v3, "mul":I
    rem-long v4, v0, v10

    long-to-int v2, v4

    .line 171
    .local v2, "modulus":I
    if-nez v3, :cond_0

    .line 172
    long-to-double v4, v0

    .line 182
    :goto_0
    return-wide v4

    .line 174
    :cond_0
    const/16 v4, 0x100

    if-le v2, v4, :cond_2

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    .line 177
    int-to-float v4, v3

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-double v4, v4

    goto :goto_0

    .line 179
    :cond_1
    int-to-float v4, v3

    mul-float/2addr v4, v8

    float-to-double v4, v4

    goto :goto_0

    .line 182
    :cond_2
    int-to-float v4, v3

    mul-float/2addr v4, v8

    const/high16 v5, 0x3e800000    # 0.25f

    add-float/2addr v4, v5

    float-to-double v4, v4

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getFormatSize(J)Ljava/lang/String;
    .locals 12
    .param p0, "size"    # J

    .prologue
    .line 306
    const/4 v3, 0x0

    .line 307
    .local v3, "formatSize":Ljava/lang/String;
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v8, "#0.00"

    invoke-direct {v2, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, "df":Ljava/text/DecimalFormat;
    const-wide/16 v8, 0x400

    cmp-long v8, v8, p0

    if-lez v8, :cond_0

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    :goto_0
    return-object v3

    .line 311
    :cond_0
    const-wide/32 v8, 0x100000

    cmp-long v8, v8, p0

    if-lez v8, :cond_1

    .line 312
    long-to-double v8, p0

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double v0, v8, v10

    .line 313
    .local v0, "bytes":D
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    goto :goto_0

    .end local v0    # "bytes":D
    :cond_1
    const-wide/32 v8, 0x40000000

    cmp-long v8, v8, p0

    if-lez v8, :cond_2

    .line 315
    long-to-double v8, p0

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double v6, v8, v10

    .line 316
    .local v6, "mbytes":D
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    goto :goto_0

    .line 318
    .end local v6    # "mbytes":D
    :cond_2
    long-to-double v8, p0

    const-wide/high16 v10, 0x41d0000000000000L    # 1.073741824E9

    div-double v4, v8, v10

    .line 319
    .local v4, "gbytes":D
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "GB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getMaxCpuFreq()Ljava/lang/String;
    .locals 12

    .prologue
    .line 74
    const-string v7, ""

    .line 75
    .local v7, "result":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 78
    .local v8, "resultValue":J
    const/4 v10, 0x2

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/system/bin/cat"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string v11, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v11, v0, v10

    .line 80
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 81
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 82
    .local v5, "process":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 83
    .local v4, "in":Ljava/io/InputStream;
    const/16 v10, 0x18

    new-array v6, v10, [B

    .line 84
    .local v6, "re":[B
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 85
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "re":[B
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 95
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 99
    :goto_2
    invoke-static {v8, v9}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getCPUSize(J)Ljava/lang/String;

    move-result-object v7

    .line 100
    return-object v7

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    const-string v7, "N/A"

    goto :goto_1

    .line 96
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getMemoryStatus(Landroid/content/Context;)[Ljava/lang/String;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, "status":Ljava/lang/String;
    const-string v9, ""

    .line 190
    .local v9, "readOnly":Ljava/lang/String;
    const-string v14, ""

    .line 192
    .local v14, "total":Ljava/lang/String;
    const-string v2, ""

    .line 195
    .local v2, "available":Ljava/lang/String;
    const-string v18, "mounted_ro"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 196
    const-string v11, "mounted"

    .line 197
    const-string v9, ""

    .line 199
    const-string v18, "DeviceInfoShow"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readOnly = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    .line 204
    .local v15, "values":[Ljava/lang/String;
    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 206
    :try_start_0
    new-instance v18, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual/range {v18 .. v18}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 208
    .local v8, "path":Ljava/io/File;
    new-instance v10, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 209
    .local v10, "stat":Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    .line 210
    .local v6, "blockSize":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v16

    .line 211
    .local v16, "totalBlocks":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    .line 213
    .local v4, "availableBlocks":J
    mul-long v18, v16, v6

    invoke-static/range {v18 .. v19}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getFormatSize(J)Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "strTotalSize":Ljava/lang/String;
    mul-long v18, v4, v6

    invoke-static/range {v18 .. v19}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getFormatSize(J)Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "strAvailable":Ljava/lang/String;
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18

    .line 217
    const/16 v18, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v18
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v4    # "availableBlocks":J
    .end local v6    # "blockSize":J
    .end local v8    # "path":Ljava/io/File;
    .end local v10    # "stat":Landroid/os/StatFs;
    .end local v12    # "strAvailable":Ljava/lang/String;
    .end local v13    # "strTotalSize":Ljava/lang/String;
    .end local v16    # "totalBlocks":J
    :goto_0
    return-object v15

    .line 218
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v18, "DeviceInfoShow"

    const-string v19, "SDcard is removed!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v15, v18

    .line 226
    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v15, v18

    goto :goto_0
.end method

.method private static getRAMSize(J)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # J

    .prologue
    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, "cpuSize":Ljava/lang/String;
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v6, "#0.00"

    invoke-direct {v3, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, "df":Ljava/text/DecimalFormat;
    const-wide/16 v6, 0x400

    cmp-long v6, v6, p0

    if-lez v6, :cond_0

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    :goto_0
    return-object v2

    .line 291
    :cond_0
    const-wide/32 v6, 0x100000

    cmp-long v6, v6, p0

    if-lez v6, :cond_1

    .line 292
    long-to-double v6, p0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double v0, v6, v8

    .line 293
    .local v0, "bytes":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    goto :goto_0

    .line 295
    .end local v0    # "bytes":D
    :cond_1
    long-to-double v6, p0

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double v4, v6, v8

    .line 296
    .local v4, "mbytes":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "GB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getRamInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getTotalMemory(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdcardInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getMemoryStatus(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "values":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTotalMemory()J
    .locals 8

    .prologue
    .line 129
    const-string v4, "/proc/meminfo"

    .line 130
    .local v4, "str1":Ljava/lang/String;
    const-string v5, ""

    .line 133
    .local v5, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v1, v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 135
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 136
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 138
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 142
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 143
    .local v2, "resultValue":J
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 140
    .end local v2    # "resultValue":J
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static getTotalMemory(Z)Ljava/lang/String;
    .locals 9
    .param p0, "format"    # Z

    .prologue
    .line 106
    const-string v4, "/proc/meminfo"

    .line 107
    .local v4, "str1":Ljava/lang/String;
    const-string v5, ""

    .line 110
    .local v5, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v1, v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 112
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 113
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 115
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 120
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 121
    .local v2, "resultValue":J
    if-eqz p0, :cond_0

    .line 122
    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->formatMemoryDisplay(J)Ljava/lang/String;

    move-result-object v6

    .line 124
    :goto_1
    return-object v6

    :cond_0
    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->formatMemoryDisplay(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GB"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "MB"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 117
    .end local v2    # "resultValue":J
    :catch_0
    move-exception v6

    goto :goto_0
.end method
