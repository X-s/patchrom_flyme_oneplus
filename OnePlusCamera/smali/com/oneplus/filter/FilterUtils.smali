.class public final Lcom/oneplus/filter/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# static fields
.field private static final IDENTITY_COLOR_MATRIX:[F

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oneplus/filter/FilterUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    .line 22
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 21
    sput-object v0, Lcom/oneplus/filter/FilterUtils;->IDENTITY_COLOR_MATRIX:[F

    .line 17
    return-void

    .line 22
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyColorMatrix(Landroid/graphics/Bitmap;Landroid/graphics/ColorMatrix;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "colorMatrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 39
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 40
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 42
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 44
    return-object v2
.end method

.method public static applyRGBLUT(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/oneplus/media/LookupTable;Lcom/oneplus/media/LookupTable;Lcom/oneplus/media/LookupTable;)Z
    .locals 4
    .param p0, "srcImage"    # Landroid/graphics/Bitmap;
    .param p1, "dstImage"    # Landroid/graphics/Bitmap;
    .param p2, "redLUT"    # Lcom/oneplus/media/LookupTable;
    .param p3, "greenLUT"    # Lcom/oneplus/media/LookupTable;
    .param p4, "blueLUT"    # Lcom/oneplus/media/LookupTable;

    .prologue
    const/16 v2, 0x100

    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyRGBLUT() - Cannot load library"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v3

    .line 67
    :cond_0
    if-nez p0, :cond_1

    .line 69
    sget-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyRGBLUT() - Source image cannot be null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return v3

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_2

    .line 74
    sget-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyRGBLUT() - Source bitmap config is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v3

    .line 77
    :cond_2
    if-nez p1, :cond_3

    .line 78
    move-object p1, p0

    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_4

    .line 81
    sget-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyRGBLUT() - Destination bitmap config is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return v3

    .line 84
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/oneplus/media/LookupTable;->size()I

    move-result v0

    if-ge v0, v2, :cond_6

    .line 86
    :cond_5
    sget-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyRGBLUT() - Red LUT is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v3

    .line 89
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/oneplus/media/LookupTable;->size()I

    move-result v0

    if-ge v0, v2, :cond_8

    .line 91
    :cond_7
    sget-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyRGBLUT() - Green LUT is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return v3

    .line 94
    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/oneplus/media/LookupTable;->size()I

    move-result v0

    if-ge v0, v2, :cond_a

    .line 96
    :cond_9
    sget-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyRGBLUT() - Blue LUT is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return v3

    .line 101
    :cond_a
    invoke-virtual {p2}, Lcom/oneplus/media/LookupTable;->array()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/media/LookupTable;->array()[I

    move-result-object v1

    invoke-virtual {p4}, Lcom/oneplus/media/LookupTable;->array()[I

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oneplus/filter/FilterUtils;->applyRGBTableNative(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[I[I[I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 103
    sget-object v0, Lcom/oneplus/filter/FilterUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyRGBTable() - Error to apply RGB table"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return v3

    .line 108
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private static native applyRGBTableNative(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[I[I[I)Z
.end method

.method public static interpolateColorMatrices(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;F)V
    .locals 7
    .param p0, "x"    # Landroid/graphics/ColorMatrix;
    .param p1, "y"    # Landroid/graphics/ColorMatrix;
    .param p2, "result"    # Landroid/graphics/ColorMatrix;
    .param p3, "progress"    # F

    .prologue
    .line 122
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 123
    :cond_0
    return-void

    .line 124
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 125
    .local v3, "xArray":[F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v4

    .line 126
    .local v4, "yArray":[F
    invoke-virtual {p2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    .line 127
    .local v2, "resultArray":[F
    const/16 v1, 0x13

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 129
    aget v5, v4, v1

    aget v6, v3, v1

    sub-float v0, v5, v6

    .line 130
    .local v0, "diff":F
    aget v5, v3, v1

    mul-float v6, v0, p3

    add-float/2addr v5, v6

    aput v5, v2, v1

    .line 127
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 124
    .end local v0    # "diff":F
    .end local v1    # "i":I
    .end local v2    # "resultArray":[F
    .end local v3    # "xArray":[F
    .end local v4    # "yArray":[F
    :cond_2
    sget-object v3, Lcom/oneplus/filter/FilterUtils;->IDENTITY_COLOR_MATRIX:[F

    .restart local v3    # "xArray":[F
    goto :goto_0

    .line 132
    .restart local v1    # "i":I
    .restart local v2    # "resultArray":[F
    .restart local v4    # "yArray":[F
    :cond_3
    invoke-virtual {p2, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 120
    return-void
.end method

.method public static isIdentityColorMatrix(Landroid/graphics/ColorMatrix;)Z
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 144
    .local v1, "matrixArray":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 146
    aget v2, v1, v0

    sget-object v3, Lcom/oneplus/filter/FilterUtils;->IDENTITY_COLOR_MATRIX:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 147
    const/4 v2, 0x0

    return v2

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
