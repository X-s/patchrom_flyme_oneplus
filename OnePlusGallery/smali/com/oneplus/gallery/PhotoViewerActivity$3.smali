.class Lcom/oneplus/gallery/PhotoViewerActivity$3;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoViewerActivity;->registerMediaChangeCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoViewerActivity$3;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

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
    .line 370
    return-void
.end method

.method public onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoViewerActivity$3;->this$0:Lcom/oneplus/gallery/PhotoViewerActivity;

    # invokes: Lcom/oneplus/gallery/PhotoViewerActivity;->onMediaDeleted(Lcom/oneplus/gallery/media/Media;)V
    invoke-static {v0, p4}, Lcom/oneplus/gallery/PhotoViewerActivity;->access$300(Lcom/oneplus/gallery/PhotoViewerActivity;Lcom/oneplus/gallery/media/Media;)V

    .line 358
    return-void
.end method

.method public onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 362
    return-void
.end method

.method public onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 366
    return-void
.end method

.method public onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 352
    return-void
.end method
