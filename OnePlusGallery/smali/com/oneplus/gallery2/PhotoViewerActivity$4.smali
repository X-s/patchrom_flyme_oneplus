.class Lcom/oneplus/gallery2/PhotoViewerActivity$4;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "PhotoViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/PhotoViewerActivity;->registerMediaChangeCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$4;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$4;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    # invokes: Lcom/oneplus/gallery2/PhotoViewerActivity;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;)V
    invoke-static {v0, p2}, Lcom/oneplus/gallery2/PhotoViewerActivity;->access$500(Lcom/oneplus/gallery2/PhotoViewerActivity;Lcom/oneplus/gallery2/media/Media;)V

    .line 373
    return-void
.end method
