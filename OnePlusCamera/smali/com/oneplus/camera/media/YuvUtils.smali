.class public final Lcom/oneplus/camera/media/YuvUtils;
.super Ljava/lang/Object;
.source "YuvUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "opcameralib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static multiPlaneYuvToNV21(Landroid/media/Image;[B)V
    .locals 3
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "result"    # [B

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid image format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-nez p1, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No result buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/oneplus/camera/media/YuvUtils;->multiPlaneYuvToNV21Direct([Landroid/media/Image$Plane;[BII)V

    .line 45
    return-void
.end method

.method public static native multiPlaneYuvToNV21([Lcom/oneplus/camera/media/ImagePlane;[BII)V
.end method

.method private static native multiPlaneYuvToNV21Direct([Landroid/media/Image$Plane;[BII)V
.end method
