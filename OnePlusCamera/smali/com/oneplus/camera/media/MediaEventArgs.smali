.class public Lcom/oneplus/camera/media/MediaEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field private final m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_FilePath:Ljava/lang/String;

.field private final m_FrameIndex:I

.field private final m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;
    .param p5, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 34
    iput p2, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FrameIndex:I

    .line 35
    iput-object p3, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    .line 37
    iput-object p5, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/io/MediaSaveTask;Z)V
    .locals 1
    .param p1, "saveTask"    # Lcom/oneplus/camera/io/MediaSaveTask;
    .param p2, "getThumbnail"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 47
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getFrameIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FrameIndex:I

    .line 48
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 45
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrameIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FrameIndex:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method
