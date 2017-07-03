.class public Lcom/oneplus/gallery2/editor/GrayscaleColorMatrixProvider;
.super Lcom/oneplus/gallery2/editor/ColorMatrixProvider;
.source "GrayscaleColorMatrixProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createColorMatrix()Landroid/graphics/ColorMatrix;
    .locals 3

    .prologue
    .line 14
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 15
    .local v0, "matrix":Landroid/graphics/ColorMatrix;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/GrayscaleColorMatrixProvider;->getStrength()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 16
    return-object v0
.end method
