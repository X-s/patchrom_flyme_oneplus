.class Lcom/oneplus/gallery2/PhotoViewerActivity$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/PhotoViewerActivity;
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
    .line 60
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$1;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoViewerActivity$1;->this$0:Lcom/oneplus/gallery2/PhotoViewerActivity;

    # invokes: Lcom/oneplus/gallery2/PhotoViewerActivity;->onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V
    invoke-static {v0, p4}, Lcom/oneplus/gallery2/PhotoViewerActivity;->access$000(Lcom/oneplus/gallery2/PhotoViewerActivity;Lcom/oneplus/gallery2/media/Media;)V

    .line 65
    return-void
.end method
