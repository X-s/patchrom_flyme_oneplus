.class public Lcom/oneplus/camera/media/MediaEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field private final m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_FilePath:Ljava/lang/String;

.field private final m_FrameIndex:I

.field private final m_PictureId:Ljava/lang/String;

.field private final m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "pictureId"    # Ljava/lang/String;
    .param p3, "frameIndex"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "contentUri"    # Landroid/net/Uri;
    .param p6, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 35
    iput p3, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FrameIndex:I

    .line 36
    iput-object p4, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    .line 38
    iput-object p2, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_PictureId:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/io/MediaSaveTask;Z)V
    .locals 1
    .param p1, "saveTask"    # Lcom/oneplus/camera/io/MediaSaveTask;
    .param p2, "getThumbnail"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 50
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getFrameIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FrameIndex:I

    .line 51
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    .line 53
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getPictureId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_PictureId:Ljava/lang/String;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 47
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrameIndex()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FrameIndex:I

    return v0
.end method

.method public final getPictureId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_PictureId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method
