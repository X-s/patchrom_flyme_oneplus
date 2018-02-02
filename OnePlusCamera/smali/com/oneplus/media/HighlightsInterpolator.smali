.class public Lcom/oneplus/media/HighlightsInterpolator;
.super Ljava/lang/Object;
.source "HighlightsInterpolator.java"

# interfaces
.implements Lcom/oneplus/media/ColorInterpolator;


# static fields
.field private static final NEGATIVE_LEVEL_COEFFICIENT:[D

.field private static final POSITIVE_LEVEL_COEFFICIENT:[D


# instance fields
.field private m_Level:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 6
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/media/HighlightsInterpolator;->NEGATIVE_LEVEL_COEFFICIENT:[D

    .line 7
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/media/HighlightsInterpolator;->POSITIVE_LEVEL_COEFFICIENT:[D

    .line 3
    return-void

    .line 6
    :array_0
    .array-data 8
        0x3feec49ba5e353f8L    # 0.9615
        -0x3ffc11d14e3bcd36L    # -2.4913
        0x40107c6a7ef9db23L    # 4.1215
        -0x3ff8a7ef9db22d0eL    # -2.918
        0x3ff537b4a2339c0fL    # 1.3261
        -0x40a425aee631f8a1L    # -0.0017
    .end array-data

    .line 7
    :array_1
    .array-data 8
        0x4020068db8bac711L    # 8.0128
        -0x3fce3645a1cac083L    # -17.788
        0x4025d6872b020c4aL    # 10.919
        -0x400d79a6b50b0f28L    # -1.1578
        0x3ff03c9eecbfb15bL    # 1.0148
        0x3f3a36e2eb1c432dL    # 4.0E-4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private evaluateMaxValue(D)D
    .locals 9
    .param p1, "input"    # D

    .prologue
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .local v2, "result":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 19
    sget-object v1, Lcom/oneplus/media/HighlightsInterpolator;->POSITIVE_LEVEL_COEFFICIENT:[D

    aget-wide v4, v1, v0

    rsub-int/lit8 v1, v0, 0x5

    int-to-double v6, v1

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 21
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 22
    :cond_1
    return-wide v2
.end method

.method private evaluateMinValue(D)D
    .locals 9
    .param p1, "input"    # D

    .prologue
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .local v2, "result":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 31
    sget-object v1, Lcom/oneplus/media/HighlightsInterpolator;->NEGATIVE_LEVEL_COEFFICIENT:[D

    aget-wide v4, v1, v0

    rsub-int/lit8 v1, v0, 0x5

    int-to-double v6, v1

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 13
    .param p1, "input"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const-wide v6, 0x3fefef9db22d0e56L    # 0.998

    const-wide v8, 0x3f600e6afcce1c58L    # 0.00196

    .line 43
    iget v10, p0, Lcom/oneplus/media/HighlightsInterpolator;->m_Level:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3a83126f    # 0.001f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    .line 44
    return p1

    .line 45
    :cond_0
    iget v10, p0, Lcom/oneplus/media/HighlightsInterpolator;->m_Level:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 47
    float-to-double v8, p1

    invoke-direct {p0, v8, v9}, Lcom/oneplus/media/HighlightsInterpolator;->evaluateMinValue(D)D

    move-result-wide v2

    .line 48
    .local v2, "min":D
    float-to-double v8, p1

    cmpg-double v8, v8, v6

    if-gez v8, :cond_1

    float-to-double v6, p1

    :cond_1
    iget v8, p0, Lcom/oneplus/media/HighlightsInterpolator;->m_Level:F

    add-float/2addr v8, v12

    float-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/oneplus/media/HighlightsInterpolator;->m_Level:F

    float-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double v4, v6, v8

    .line 55
    .end local v2    # "min":D
    .local v4, "result":D
    :goto_0
    double-to-float v6, v4

    return v6

    .line 52
    .end local v4    # "result":D
    :cond_2
    float-to-double v6, p1

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/HighlightsInterpolator;->evaluateMaxValue(D)D

    move-result-wide v0

    .line 53
    .local v0, "max":D
    float-to-double v6, p1

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    float-to-double v6, p1

    :goto_1
    iget v8, p0, Lcom/oneplus/media/HighlightsInterpolator;->m_Level:F

    sub-float v8, v12, v8

    float-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/oneplus/media/HighlightsInterpolator;->m_Level:F

    float-to-double v8, v8

    mul-double/2addr v8, v0

    add-double v4, v6, v8

    .restart local v4    # "result":D
    goto :goto_0

    .end local v4    # "result":D
    :cond_3
    move-wide v6, v8

    goto :goto_1
.end method

.method public setLevel(F)V
    .locals 0
    .param p1, "level"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/oneplus/media/HighlightsInterpolator;->m_Level:F

    .line 63
    return-void
.end method
