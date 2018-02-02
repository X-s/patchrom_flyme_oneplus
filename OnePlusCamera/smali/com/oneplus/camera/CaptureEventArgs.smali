.class public Lcom/oneplus/camera/CaptureEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "CaptureEventArgs.java"


# instance fields
.field private final m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private final m_CaptureTrigger:Lcom/oneplus/camera/CaptureTrigger;

.field private final m_FrameIndex:I


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 22
    sget-object v0, Lcom/oneplus/camera/CaptureTrigger;->SW_BUTTON:Lcom/oneplus/camera/CaptureTrigger;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;ILcom/oneplus/camera/CaptureTrigger;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;I)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/camera/CaptureTrigger;->SW_BUTTON:Lcom/oneplus/camera/CaptureTrigger;

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;ILcom/oneplus/camera/CaptureTrigger;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;ILcom/oneplus/camera/CaptureTrigger;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "trigger"    # Lcom/oneplus/camera/CaptureTrigger;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 54
    iput-object p3, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_CaptureTrigger:Lcom/oneplus/camera/CaptureTrigger;

    .line 55
    iput p2, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_FrameIndex:I

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureTrigger;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "trigger"    # Lcom/oneplus/camera/CaptureTrigger;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/camera/CaptureEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;ILcom/oneplus/camera/CaptureTrigger;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getCaptureTrigger()Lcom/oneplus/camera/CaptureTrigger;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_CaptureTrigger:Lcom/oneplus/camera/CaptureTrigger;

    return-object v0
.end method

.method public final getFrameIndex()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_FrameIndex:I

    return v0
.end method

.method public final getMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final isBurstPhotoCapture()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v0}, Lcom/oneplus/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
