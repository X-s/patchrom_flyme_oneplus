.class public Lcom/oneplus/camera/UnprocessedPictureEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "UnprocessedPictureEventArgs.java"


# instance fields
.field private final m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private final m_HALPictureId:Ljava/lang/String;

.field private final m_PictureId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "pictureId"    # Ljava/lang/String;
    .param p3, "halPictureId"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 24
    iput-object p2, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_PictureId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_HALPictureId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getHALPictureId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_HALPictureId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPictureId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_PictureId:Ljava/lang/String;

    return-object v0
.end method
