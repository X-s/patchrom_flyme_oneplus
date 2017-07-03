.class Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$7;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$7;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 881
    return-void
.end method

.method public onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 875
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$7;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->invalidateThumbnailImages(Lcom/oneplus/gallery/media/Media;I)V

    .line 876
    return-void
.end method

.method public onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 870
    return-void
.end method

.method public onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 865
    return-void
.end method

.method public onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 858
    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$7;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->invalidateThumbnailImages(Lcom/oneplus/gallery/media/Media;I)V

    .line 860
    :cond_0
    return-void
.end method
