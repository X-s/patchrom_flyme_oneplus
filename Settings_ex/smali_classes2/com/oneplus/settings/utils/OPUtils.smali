.class public Lcom/oneplus/settings/utils/OPUtils;
.super Ljava/lang/Object;
.source "OPUtils.java"


# static fields
.field public static final ANDROID_SYSTEM_UID:I = 0x3e8

.field public static final COMPANY:Ljava/lang/String; = "oneplus"

.field public static final OEM_REPEATE_INCALL_LIMITE:Ljava/lang/String; = "oem_repeate_incall_unlimite"

.field public static final OEM_TREE_KEY_DEFINE:Ljava/lang/String; = "oem_three_key_define"

.field public static final ONEPLUS_CLOUD_PACKAGE:Ljava/lang/String; = "com.oneplus.cloud"

.field public static final ONEPLUS_METRICSLOGGER:I = 0x270f

.field public static final ZH_CN_HANS_ID:Ljava/lang/String; = "zh-Hans-CN"

.field public static final ZH_CN_ID:Ljava/lang/String; = "zh-CN"

.field public static final ZH_CN_LABEL:Ljava/lang/String; = "zh_CN"

.field public static isExist_Cloud_Package:Ljava/lang/Boolean;

.field private static mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getUserLocaleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compositeColor(II)I
    .locals 8
    .param p0, "argb1"    # I
    .param p1, "argb2"    # I

    .prologue
    .line 223
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 224
    .local v1, "a1":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 226
    .local v2, "a2":I
    rsub-int v6, v2, 0xff

    rsub-int v7, v1, 0xff

    mul-int/2addr v6, v7

    div-int/lit16 v6, v6, 0xff

    rsub-int v0, v6, 0xff

    .line 228
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 229
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 228
    invoke-static {v6, v1, v7, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->compositeColorComponent(IIIII)I

    move-result v5

    .line 230
    .local v5, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 231
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 230
    invoke-static {v6, v1, v7, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->compositeColorComponent(IIIII)I

    move-result v4

    .line 232
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 233
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 232
    invoke-static {v6, v1, v7, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->compositeColorComponent(IIIII)I

    move-result v3

    .line 235
    .local v3, "b":I
    invoke-static {v0, v5, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeColorComponent(IIIII)I
    .locals 3
    .param p0, "c1"    # I
    .param p1, "a1"    # I
    .param p2, "c2"    # I
    .param p3, "a2"    # I
    .param p4, "a"    # I

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p4, :cond_0

    .line 216
    return v0

    .line 218
    :cond_0
    mul-int/lit16 v0, p2, 0xff

    mul-int/2addr v0, p3

    mul-int v1, p0, p1

    rsub-int v2, p3, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    div-int/2addr v0, p4

    div-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getOnePlusPrimaryColor(Landroid/content/Context;)I

    move-result v2

    .line 413
    .local v2, "onePlusPrimaryColor":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b037e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 414
    .local v0, "color_state_disable":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b037f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 415
    .local v1, "color_state_pressed":I
    invoke-static {v1, v1, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->createColorStateList(IIII)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 416
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    return-object v3
.end method

.method public static createColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "color_state_pressed"    # I
    .param p1, "color_state_selected"    # I
    .param p2, "color_state_enabled"    # I
    .param p3, "color_state_default"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 400
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v8, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 401
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 402
    new-array v2, v5, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v6

    new-array v2, v4, [I

    aput-object v2, v1, v7

    .line 403
    new-array v2, v8, [I

    aput p0, v2, v4

    aput p1, v2, v5

    aput p2, v2, v6

    aput p3, v2, v7

    .line 400
    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static dp2Px(Landroid/util/DisplayMetrics;F)I
    .locals 1
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p1, "dp"    # F

    .prologue
    .line 478
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static formatMemoryDisplay(J)Ljava/lang/String;
    .locals 12
    .param p0, "size"    # J

    .prologue
    const-wide/16 v10, 0x200

    const/high16 v8, 0x3f000000    # 0.5f

    .line 293
    const-wide/16 v4, 0x400

    mul-long/2addr v4, p0

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    .line 294
    .local v0, "mega":J
    div-long v4, v0, v10

    long-to-int v3, v4

    .line 295
    .local v3, "mul":I
    rem-long v4, v0, v10

    long-to-int v2, v4

    .line 297
    .local v2, "modulus":I
    if-nez v3, :cond_0

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 300
    :cond_0
    const/16 v4, 0x100

    if-le v2, v4, :cond_2

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v3

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 305
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v3

    mul-float/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 308
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v3

    mul-float/2addr v5, v8

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAccentColor(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 264
    .local v1, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010435

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 265
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 266
    .local v0, "colorControl":I
    return v0
.end method

.method public static getActivityIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 464
    if-nez p0, :cond_0

    .line 465
    return-object p0

    .line 468
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 469
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 470
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 471
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 470
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 472
    .local v0, "bitmapResult":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 473
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 474
    return-object v0
.end method

.method private static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 113
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 115
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v0

    .line 116
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vectorDrawableId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v3, v4, :cond_0

    .line 436
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 437
    .local v2, "vectorDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 438
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 439
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 437
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 440
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 441
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 442
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 446
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "vectorDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 444
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getColor(Landroid/content/res/Resources$Theme;I)I
    .locals 2
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;
    .param p1, "attrId"    # I

    .prologue
    .line 420
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 421
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 422
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method public static getOnePlusPrimaryColor(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    const v1, 0x7f0b0390

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 390
    .local v0, "color":I
    return v0
.end method

.method public static getRightTheme(Landroid/content/ContentResolver;II)I
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "themeLight"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p2, "themeDark"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 378
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p2    # "themeDark":I
    :goto_0
    return p2

    .restart local p2    # "themeDark":I
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method public static getRightTheme(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeLight"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p2, "themeDark"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/oneplus/settings/utils/OPUtils;->getRightTheme(Landroid/content/ContentResolver;II)I

    move-result v0

    return v0
.end method

.method public static getTintSvgBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vectorDrawableId"    # I
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 428
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/oneplus/settings/utils/OPUtils;->tintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 429
    .local v1, "tintBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    return-object v1
.end method

.method public static getTotalMemory()Ljava/lang/String;
    .locals 9

    .prologue
    .line 314
    const-string/jumbo v3, "/proc/meminfo"

    .line 315
    .local v3, "str1":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 318
    .local v6, "str2":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v2, v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 320
    .local v2, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 321
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 322
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 323
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 328
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 329
    .local v4, "resultValue":J
    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->formatMemoryDisplay(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 325
    .end local v4    # "resultValue":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static getUserLocaleList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 517
    .local v2, "localeList":Landroid/os/LocaleList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 518
    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 519
    .local v1, "locale":Ljava/util/Locale;
    const-string/jumbo v4, "zh-CN"

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    const-string/jumbo v4, "zh-Hans-CN"

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 522
    :cond_0
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_1
    return-object v3
.end method

.method public static isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oriIntent"    # Landroid/content/Intent;
    .param p2, "intent_action_scan"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 160
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez p1, :cond_1

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/high16 v4, 0x10000

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 163
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static isAndroidModeOn(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 360
    const-string/jumbo v1, "oem_black_mode"

    invoke-static {p0, v1, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "isExist":Z
    const-string/jumbo v2, "com.oneplus.cloud"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    sget-object v2, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 89
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 91
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 92
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 96
    :goto_0
    sget-object v2, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 94
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    goto :goto_0

    .line 98
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    sget-object v2, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 101
    :cond_2
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 103
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 104
    const/4 v1, 0x1

    .line 107
    :cond_3
    return v1
.end method

.method public static isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "isExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 135
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 137
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 143
    const/4 v2, 0x1

    .line 146
    :cond_0
    return v2

    .line 138
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBlackModeOn(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 356
    const-string/jumbo v2, "oem_black_mode"

    invoke-static {p0, v2, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 347
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isFeatureSupport(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGuestMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 125
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 126
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const/4 v2, 0x0

    return v2

    .line 129
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static isO2()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 239
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportFontStyleSetting()Z
    .locals 6

    .prologue
    .line 482
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "country":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "language":Ljava/lang/String;
    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "supportlanguage":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 486
    aget-object v4, v3, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 487
    const/4 v4, 0x1

    return v4

    .line 485
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public static isSurportGesture20(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.blackScreenGesture_2.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.no_need_power_on_password.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportProductInfo(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo16859(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo17801(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSurportProductInfo16859(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.product_info_cheeseburger.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportProductInfo17801(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.product_info_dumpling.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWhiteModeOn(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 352
    const-string/jumbo v1, "oem_black_mode"

    invoke-static {p0, v1, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isZh(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 338
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    const/4 v2, 0x1

    return v2

    .line 342
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isZhCn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static replaceZhCnToZhCnHANS(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 495
    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;I)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 195
    new-instance v1, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 200
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 194
    :cond_0
    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 205
    new-instance v1, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 210
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    :cond_0
    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v1, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 190
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    :cond_0
    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 175
    new-instance v1, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 180
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    :cond_0
    return-void
.end method

.method public static showROMStorage()Ljava/lang/String;
    .locals 10

    .prologue
    .line 271
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 274
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    .line 275
    .local v6, "totalBlocks":J
    const-wide/16 v8, 0x400

    div-long v8, v0, v8

    mul-long v4, v6, v8

    .line 276
    .local v4, "size":J
    const-wide/32 v8, 0x10000000

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    .line 277
    const-string/jumbo v8, "512GB"

    return-object v8

    .line 278
    :cond_0
    const-wide/32 v8, 0x8000000

    cmp-long v8, v4, v8

    if-ltz v8, :cond_1

    .line 279
    const-string/jumbo v8, "256GB"

    return-object v8

    .line 280
    :cond_1
    const-wide/32 v8, 0x4000000

    cmp-long v8, v4, v8

    if-ltz v8, :cond_2

    .line 281
    const-string/jumbo v8, "128GB"

    return-object v8

    .line 282
    :cond_2
    const-wide/32 v8, 0x2000000

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    .line 283
    const-string/jumbo v8, "64GB"

    return-object v8

    .line 284
    :cond_3
    const-wide/32 v8, 0x1000000

    cmp-long v8, v4, v8

    if-ltz v8, :cond_4

    .line 285
    const-string/jumbo v8, "32GB"

    return-object v8

    .line 287
    :cond_4
    const-string/jumbo v8, "16GB"

    return-object v8
.end method

.method public static tintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 450
    if-nez p0, :cond_0

    .line 451
    return-object p0

    .line 454
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 455
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 456
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 457
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 456
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 458
    .local v0, "bitmapResult":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 459
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 460
    return-object v0
.end method
