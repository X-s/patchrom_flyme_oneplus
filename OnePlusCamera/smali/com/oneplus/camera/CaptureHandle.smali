.class public abstract Lcom/oneplus/camera/CaptureHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureHandle.java"


# instance fields
.field private final m_MediaType:Lcom/oneplus/camera/media/MediaType;


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/media/MediaType;)V
    .locals 2
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 21
    const-string v0, "Capture"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media type specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/CaptureHandle;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    .line 25
    return-void
.end method


# virtual methods
.method public getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/camera/CaptureHandle;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method public isBurstPhotoCapture()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
