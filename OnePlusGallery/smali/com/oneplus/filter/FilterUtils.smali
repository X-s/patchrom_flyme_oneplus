.class public final Lcom/oneplus/filter/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# static fields
.field private static final IDENTIRY_COLOR_MATRIX:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/filter/FilterUtils;->IDENTIRY_COLOR_MATRIX:[F

    .line 20
    return-void

    .line 15
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyColorMatrix(Landroid/graphics/Bitmap;Landroid/graphics/ColorMatrix;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "colorMatrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 32
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 33
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 37
    return-object v2
.end method

.method public static interpolateColorMatrices(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;F)V
    .locals 6
    .param p0, "src"    # Landroid/graphics/ColorMatrix;
    .param p1, "dest"    # Landroid/graphics/ColorMatrix;
    .param p2, "result"    # Landroid/graphics/ColorMatrix;
    .param p3, "progress"    # F

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 51
    .local v3, "resultArray":[F
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 52
    .local v0, "destArray":[F
    const/16 v2, 0x13

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_0

    .line 57
    invoke-virtual {p2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 58
    return-void

    .line 54
    :cond_0
    aget v4, v0, v2

    aget v5, v3, v2

    sub-float v1, v4, v5

    .line 55
    .local v1, "diff":F
    aget v4, v3, v2

    mul-float v5, v1, p3

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 52
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static isIdentityColorMatrix(Landroid/graphics/ColorMatrix;)Z
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 69
    .local v1, "matrixArray":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 74
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 71
    :cond_0
    aget v2, v1, v0

    sget-object v3, Lcom/oneplus/filter/FilterUtils;->IDENTIRY_COLOR_MATRIX:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 72
    const/4 v2, 0x0

    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
