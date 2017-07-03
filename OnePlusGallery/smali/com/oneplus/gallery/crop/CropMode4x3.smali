.class public Lcom/oneplus/gallery/crop/CropMode4x3;
.super Lcom/oneplus/gallery/crop/CropModeRatioBase;
.source "CropMode4x3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCropModeType()Lcom/oneplus/gallery/crop/CropModeType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_4x3:Lcom/oneplus/gallery/crop/CropModeType;

    return-object v0
.end method

.method public getCropRatioX()F
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public getCropRatioY()F
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method
