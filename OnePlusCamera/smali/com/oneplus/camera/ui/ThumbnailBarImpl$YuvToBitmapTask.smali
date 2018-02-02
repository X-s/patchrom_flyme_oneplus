.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YuvToBitmapTask"
.end annotation


# instance fields
.field captureHandle:Lcom/oneplus/camera/CaptureHandle;

.field frameIndex:I

.field height:I

.field width:I

.field yuvImage:[B


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CaptureHandle;I[BII)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "yuvImage"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 165
    iput p2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->frameIndex:I

    .line 166
    iput-object p3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->yuvImage:[B

    .line 167
    iput p4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->width:I

    .line 168
    iput p5, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->height:I

    .line 162
    return-void
.end method
