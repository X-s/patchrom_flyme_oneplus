.class public Lcom/oneplus/media/ExposureInterpolator;
.super Ljava/lang/Object;
.source "ExposureInterpolator.java"

# interfaces
.implements Lcom/oneplus/media/ColorInterpolator;


# instance fields
.field private m_ContrastInterpolator:Lcom/oneplus/media/ContrastInterpolator;

.field private m_EV:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/oneplus/media/ContrastInterpolator;

    invoke-direct {v0}, Lcom/oneplus/media/ContrastInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/ExposureInterpolator;->m_ContrastInterpolator:Lcom/oneplus/media/ContrastInterpolator;

    .line 3
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 14
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide v8, 0x3fefef9db22d0e56L    # 0.998

    const-wide v6, 0x3f600e6afcce1c58L    # 0.00196

    .line 15
    float-to-double v4, p1

    .line 16
    .local v4, "result":D
    iget v10, p0, Lcom/oneplus/media/ExposureInterpolator;->m_EV:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3a83126f    # 0.001f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    .line 17
    return p1

    .line 18
    :cond_0
    iget v10, p0, Lcom/oneplus/media/ExposureInterpolator;->m_EV:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 20
    iget v8, p0, Lcom/oneplus/media/ExposureInterpolator;->m_EV:F

    float-to-double v8, v8

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v2, v10, v8

    .line 21
    .local v2, "r":D
    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .end local v4    # "result":D
    :goto_0
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 24
    .restart local v4    # "result":D
    iget-object v6, p0, Lcom/oneplus/media/ExposureInterpolator;->m_ContrastInterpolator:Lcom/oneplus/media/ContrastInterpolator;

    double-to-float v7, v4

    invoke-virtual {v6, v7}, Lcom/oneplus/media/ContrastInterpolator;->getInterpolation(F)F

    move-result v6

    float-to-double v4, v6

    .line 35
    :goto_1
    double-to-float v6, v4

    return v6

    :cond_1
    move-wide v4, v6

    .line 21
    goto :goto_0

    .line 28
    .end local v2    # "r":D
    :cond_2
    iget v6, p0, Lcom/oneplus/media/ExposureInterpolator;->m_EV:F

    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    float-to-double v0, v6

    .line 29
    .local v0, "alpha":D
    iget v6, p0, Lcom/oneplus/media/ExposureInterpolator;->m_EV:F

    float-to-double v6, v6

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v2, v0, v6

    .line 30
    .restart local v2    # "r":D
    float-to-double v6, p1

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    float-to-double v6, p1

    :goto_2
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 31
    mul-double/2addr v4, v0

    goto :goto_1

    :cond_3
    move-wide v6, v8

    .line 30
    goto :goto_2
.end method

.method public setEV(F)V
    .locals 6
    .param p1, "ev"    # F

    .prologue
    const/4 v1, 0x0

    .line 45
    iput p1, p0, Lcom/oneplus/media/ExposureInterpolator;->m_EV:F

    .line 46
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oneplus/media/ExposureInterpolator;->m_ContrastInterpolator:Lcom/oneplus/media/ContrastInterpolator;

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    div-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/media/ContrastInterpolator;->setLevel(F)V

    .line 43
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/ExposureInterpolator;->m_ContrastInterpolator:Lcom/oneplus/media/ContrastInterpolator;

    invoke-virtual {v0, v1}, Lcom/oneplus/media/ContrastInterpolator;->setLevel(F)V

    goto :goto_0
.end method
