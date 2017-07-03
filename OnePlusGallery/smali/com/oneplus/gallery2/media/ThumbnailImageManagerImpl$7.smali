.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$7;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$7;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 899
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$7;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->invalidateThumbnailImages(Lcom/oneplus/gallery2/media/Media;I)V

    .line 901
    :cond_0
    return-void
.end method

.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 906
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$7;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->invalidateThumbnailImages(Lcom/oneplus/gallery2/media/Media;I)V

    .line 908
    :cond_0
    return-void
.end method
