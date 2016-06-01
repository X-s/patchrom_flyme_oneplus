.class public Lcom/oppo/tribune/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACTION_INSTALL_THEME_SUCCESS:Ljava/lang/String; = "com.oneplus.tuner.install_theme_success"

.field public static final APK_METHOD_INSTALL:I = 0x1

.field public static final APK_METHOD_NONE:I = 0x0

.field public static final APK_METHOD_STARTUP:I = 0x2

.field public static final APK_STATUS_HIGH_VERSION:I = 0x3

.field public static final APK_STATUS_LOW_VERSION:I = 0x2

.field public static final APK_STATUS_NONE:I = 0x0

.field public static final APK_STATUS_SAME_VERSION:I = 0x4

.field public static final APK_STATUS_UNINSTALLED:I = 0x1

.field private static final OUT_URLS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final THEME_METHOD_INSTALL:I = 0x1

.field public static final THEME_METHOD_INSTALLDIR_NOT_EXSIT:I = 0x3

.field public static final THEME_METHOD_NONE:I = 0x0

.field public static final THEME_METHOD_OPEN:I = 0x2

.field public static final THEME_STATUS_INSTALLDIR_NOT_EXSIT:I = 0x1

.field public static final THEME_STATUS_INSTALLED:I = 0x3

.field public static final THEME_STATUS_NONE:I = 0x0

.field public static final THEME_STATUS_UNINSTALLED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-class v0, Lcom/oppo/tribune/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/util/Utils;->TAG:Ljava/lang/String;

    .line 571
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://www.oppo.com/index.php?q=software/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://pan.baidu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://yun.baidu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pan.nearme.com.cn"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/util/Utils;->OUT_URLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not instanitiate this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNumber(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # J

    .prologue
    const v9, 0x7f0c05ee

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x2710

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 548
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 568
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 550
    :cond_0
    long-to-float v4, p1

    const v5, 0x461c4000    # 10000.0f

    div-float v3, v4, v5

    .line 551
    .local v3, "temp":F
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    .line 552
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "#0.0"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 553
    .local v2, "format":Ljava/text/DecimalFormat;
    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "buf":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 557
    .end local v0    # "buf":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/DecimalFormat;
    :cond_1
    cmpg-float v4, v3, v8

    if-gez v4, :cond_2

    .line 558
    new-array v4, v7, [Ljava/lang/Object;

    float-to-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 561
    :cond_2
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "#0.0"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 562
    .restart local v2    # "format":Ljava/text/DecimalFormat;
    div-float v4, v3, v8

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "buf":Ljava/lang/String;
    const v4, 0x7f0c05ef

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static copyThemeFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {}, Lcom/oppo/tribune/square/resdown/util/SystemUtility;->isSdcardExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/Utilities;->getThemeDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "newPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/util/FileUtils;->makeSureFileDelete(Ljava/lang/String;)Z

    .line 291
    invoke-static {p1, v0}, Lcom/oppo/tribune/util/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    .end local v0    # "newPath":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private static filterIllegalByte([B)[B
    .locals 4
    .param p0, "buf"    # [B

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, "result":[B
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 487
    .local v0, "data":Ljava/lang/String;
    const-string v2, "[\\x00-\\x08\\x0b-\\x0c\\x0e-\\x1f]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 491
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getApkArchiveApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v2

    .line 336
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 322
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 323
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 325
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_1

    move-object v3, v2

    .line 326
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 329
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 330
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 332
    :try_start_0
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 336
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 333
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v6, "ApkIconLoader"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getApkArchiveOpenMethod(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/oppo/tribune/util/Utils;->getApkArchiveStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, "status":I
    const/4 v0, 0x0

    .line 129
    .local v0, "method":I
    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_0
    return v0

    .line 131
    :pswitch_0
    const/4 v0, 0x0

    .line 132
    goto :goto_0

    .line 135
    :pswitch_1
    const/4 v0, 0x1

    .line 136
    goto :goto_0

    .line 139
    :pswitch_2
    const/4 v0, 0x1

    .line 140
    goto :goto_0

    .line 143
    :pswitch_3
    const/4 v0, 0x2

    .line 144
    goto :goto_0

    .line 147
    :pswitch_4
    const/4 v0, 0x2

    .line 148
    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getApkArchiveStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, "status":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 83
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 86
    .local v0, "archivePI":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    move v5, v4

    .line 107
    .end local v0    # "archivePI":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v5

    .line 90
    .restart local v0    # "archivePI":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v4, 0x1

    .line 92
    :try_start_0
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 94
    .local v2, "installedPI":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    .line 95
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v5, v6, :cond_1

    .line 96
    const/4 v5, 0x2

    goto :goto_0

    .line 97
    :cond_1
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v5, v6, :cond_2

    .line 98
    const/4 v5, 0x3

    goto :goto_0

    .line 100
    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    .line 103
    .end local v2    # "installedPI":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .end local v0    # "archivePI":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    move v5, v4

    .line 107
    goto :goto_0
.end method

.method public static getImgExif(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 597
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 600
    .local v2, "exjs":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 602
    .local v1, "ex":Landroid/media/ExifInterface;
    if-eqz v1, :cond_0

    .line 604
    const-string v3, "DateTime"

    const-string v4, "DateTime"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    const-string v3, "Make"

    const-string v4, "Make"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 608
    const-string v3, "Model"

    const-string v4, "Model"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    const-string v3, "ImageWidth"

    const-string v4, "ImageWidth"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    const-string v3, "ImageLength"

    const-string v4, "ImageLength"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    const-string v3, "ISOSpeedRatings"

    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v3, "GPSLongitudeRef"

    const-string v4, "GPSLongitudeRef"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    const-string v3, "GPSLatitudeRef"

    const-string v4, "GPSLatitudeRef"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    const-string v3, "GPSLongitude"

    const-string v4, "GPSLongitude"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v3, "GPSLatitude"

    const-string v4, "GPSLatitude"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 631
    .end local v1    # "ex":Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 628
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 629
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getThemeArchiveOpenMethod(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p0, p1}, Lcom/oppo/tribune/util/Utils;->getThemeArchiveStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, "status":I
    const/4 v0, 0x0

    .line 214
    .local v0, "method":I
    packed-switch v1, :pswitch_data_0

    .line 235
    :goto_0
    return v0

    .line 216
    :pswitch_0
    const/4 v0, 0x3

    .line 217
    goto :goto_0

    .line 220
    :pswitch_1
    const/4 v0, 0x0

    .line 221
    goto :goto_0

    .line 224
    :pswitch_2
    const/4 v0, 0x2

    .line 225
    goto :goto_0

    .line 228
    :pswitch_3
    const/4 v0, 0x1

    .line 229
    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getThemeArchiveStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "status":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "file":Ljava/io/File;
    if-eqz p1, :cond_2

    .line 178
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/oppo/tribune/square/resdown/util/SystemUtility;->isSdcardExist()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/Utilities;->getThemeDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 182
    .local v3, "themeDir":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    :cond_0
    const/4 v4, 0x1

    .line 194
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "themeDir":Ljava/io/File;
    :goto_0
    return v4

    .line 187
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "themeDir":Ljava/io/File;
    :cond_1
    const/4 v2, 0x2

    .line 188
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    const/4 v4, 0x3

    goto :goto_0

    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "themeDir":Ljava/io/File;
    :cond_2
    move v4, v2

    .line 194
    goto :goto_0
.end method

.method public static installApkArchive(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method public static installThemeArchive(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p0, p1}, Lcom/oppo/tribune/util/Utils;->copyThemeFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "installPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.tuner.install_theme_success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "installresult"

    invoke-static {v0, p1}, Lcom/oppo/tribune/util/Utils;->isInstallSuccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const-string v2, "savepath"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v0
.end method

.method public static isApplicationForeground(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    const/4 v5, 0x0

    .line 347
    .local v5, "topLevel":Z
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 349
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 350
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v6, v5

    .line 362
    .end local v5    # "topLevel":Z
    .local v6, "topLevel":I
    :goto_0
    return v6

    .line 354
    .end local v6    # "topLevel":I
    .restart local v5    # "topLevel":Z
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 355
    .local v3, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "activityPackageName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .end local v0    # "activityPackageName":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    move v6, v5

    .line 362
    .restart local v6    # "topLevel":I
    goto :goto_0
.end method

.method private static isInstallSuccess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "installPath"    # Ljava/lang/String;
    .param p1, "downloadPath"    # Ljava/lang/String;

    .prologue
    .line 281
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetWorkActive(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 523
    .local v2, "manager":Landroid/net/ConnectivityManager;
    const-string v5, "tuner_permission_network"

    invoke-static {v5}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getPermissionEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 526
    .local v1, "enabled":Z
    if-nez v1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v4

    .line 530
    :cond_1
    if-eqz v2, :cond_0

    .line 533
    const/4 v3, 0x0

    .line 535
    .local v3, "networkinfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 539
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 542
    const/4 v4, 0x1

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty([B)Z
    .locals 1
    .param p0, "buf"    # [B

    .prologue
    .line 473
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "arrays":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openThemeArchive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 299
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPPO_PREVIEW_THEME"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    const-string v3, "oppo_preview_theme_path"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const/4 v2, 0x0

    .line 305
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v2, 0x1

    .line 310
    :goto_0
    return v2

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oppo/tribune/util/Utils;->parseDouble(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseDouble(Ljava/lang/String;I)D
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 414
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 418
    :goto_0
    return-wide v2

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 418
    int-to-double v2, p1

    goto :goto_0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oppo/tribune/util/Utils;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 396
    if-nez p0, :cond_0

    .line 405
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 401
    .restart local p1    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oppo/tribune/util/Utils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 367
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 373
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 368
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oppo/tribune/util/Utils;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 382
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 388
    :goto_0
    return-wide v0

    .line 383
    :catch_0
    move-exception v0

    .line 388
    int-to-long v0, p1

    goto :goto_0
.end method

.method public static printCallStatck(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 504
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 505
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 506
    .local v2, "stackElements":[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    .line 507
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 508
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static record(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .prologue
    .line 499
    invoke-static {p0, p1}, Lcom/oppo/statistics/NearMeStatistics;->onUserAction(Landroid/content/Context;I)V

    .line 501
    return-void
.end method

.method public static saxParse(Landroid/content/Context;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    const/4 v0, 0x1

    .line 461
    invoke-static {p0, p1, v0, v0, p2}, Lcom/oppo/tribune/util/Utils;->saxParse(Landroid/content/Context;Ljava/lang/String;ZZLorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v0

    return v0
.end method

.method public static saxParse(Landroid/content/Context;Ljava/lang/String;ZZLorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "readCookie"    # Z
    .param p3, "writeCookie"    # Z
    .param p4, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    .line 453
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 455
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->filterIllegalByte([B)[B

    move-result-object v0

    .line 456
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p4}, Lcom/oppo/tribune/util/Utils;->saxParse([BLorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static saxParse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    .line 426
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 431
    const/4 v1, 0x1

    .line 439
    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 439
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 434
    :catch_1
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 437
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static saxParse([BLorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    .line 446
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->filterIllegalByte([B)[B

    move-result-object p0

    .line 447
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/oppo/tribune/util/Utils;->saxParse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startActivityFromApkArchive(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 246
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 248
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static startOtherWebBrowser(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 576
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    const/4 v2, 0x0

    .line 591
    :goto_0
    return v2

    .line 579
    :cond_0
    const/4 v2, 0x1

    .line 580
    .local v2, "result":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 581
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 583
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 589
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 477
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
