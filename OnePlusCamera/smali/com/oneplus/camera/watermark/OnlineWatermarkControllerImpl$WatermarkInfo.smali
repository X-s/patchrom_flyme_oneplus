.class Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
.super Ljava/lang/Object;
.source "OnlineWatermarkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatermarkInfo"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field filePath:Ljava/lang/String;

.field pictureSize:Landroid/util/Size;

.field rotateDegree:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;-><init>()V

    return-void
.end method
