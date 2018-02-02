.class final Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailInfo"
.end annotation


# instance fields
.field public final captureHandle:Lcom/oneplus/camera/CaptureHandle;

.field public contentUri:Landroid/net/Uri;

.field public decodingHandle:Lcom/oneplus/base/Handle;

.field public final frameIndex:I

.field public isDecodingPostview:Z

.field public isPostview:Z

.field public thumbnailImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;I)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 187
    iput p2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->frameIndex:I

    .line 184
    return-void
.end method
