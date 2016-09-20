.class public Lcom/oneplus/camera/media/MediaEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field private final m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_FilePath:Ljava/lang/String;

.field private final m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 31
    iput-object p2, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    .line 33
    iput-object p4, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/io/MediaSaveTask;Z)V
    .locals 1
    .param p1, "saveTask"    # Lcom/oneplus/camera/io/MediaSaveTask;
    .param p2, "getThumbnail"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 43
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaEventArgs;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method
