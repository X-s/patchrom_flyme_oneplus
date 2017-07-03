.class public Lcom/oneplus/gallery/crop/CropMode3x2;
.super Lcom/oneplus/gallery/crop/CropModeRatioBase;
.source "CropMode3x2.java"


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
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_3x2:Lcom/oneplus/gallery/crop/CropModeType;

    return-object v0
.end method

.method public getCropRatioX()F
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public getCropRatioY()F
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method
