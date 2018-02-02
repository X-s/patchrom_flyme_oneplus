.class Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;
.super Ljava/lang/Object;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageConvertionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;
    }
.end annotation


# instance fields
.field private convertType:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;

.field private resultSize:[I

.field private yuvResult:[B


# direct methods
.method public constructor <init>([B[ILcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;)V
    .locals 0
    .param p1, "yuvResult"    # [B
    .param p2, "resultSize"    # [I
    .param p3, "convertType"    # Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;

    .prologue
    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->yuvResult:[B

    .line 1261
    iput-object p2, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->resultSize:[I

    .line 1262
    iput-object p3, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->convertType:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;

    .line 1258
    return-void
.end method


# virtual methods
.method public getConvertType()Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->convertType:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;

    return-object v0
.end method

.method public getResultSize()[I
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->resultSize:[I

    return-object v0
.end method

.method public getYuvResult()[B
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->yuvResult:[B

    return-object v0
.end method
