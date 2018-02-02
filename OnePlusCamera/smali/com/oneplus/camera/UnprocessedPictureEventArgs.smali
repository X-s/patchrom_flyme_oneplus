.class public Lcom/oneplus/camera/UnprocessedPictureEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "UnprocessedPictureEventArgs.java"


# instance fields
.field private final m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private final m_PictureId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "pictureId"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 22
    iput-object p2, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_PictureId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getPictureId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->m_PictureId:Ljava/lang/String;

    return-object v0
.end method
