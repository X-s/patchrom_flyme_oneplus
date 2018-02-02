.class final enum Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;
.super Ljava/lang/Enum;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ImageConvertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

.field public static final enum YUV_TO_BMP_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

.field public static final enum YUV_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1298
    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    const-string/jumbo v1, "YUV_TO_JPEG"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->YUV_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    new-instance v0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    const-string/jumbo v1, "YUV_TO_BMP_TO_JPEG"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->YUV_TO_BMP_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    sget-object v1, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->YUV_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->YUV_TO_BMP_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->$VALUES:[Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1298
    const-class v0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;
    .locals 1

    .prologue
    .line 1298
    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->$VALUES:[Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    return-object v0
.end method
