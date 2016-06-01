.class Lcom/oneplus/gallery/CameraGalleryImpl$16;
.super Lcom/oneplus/widget/FilmstripView$ScrollListener;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    .prologue
    .line 2993
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$16;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentItemChanged(II)V
    .locals 1
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$16;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripCurrentItemChanged(II)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8800(Lcom/oneplus/gallery/CameraGalleryImpl;II)V

    .line 3013
    return-void
.end method

.method public onOverScroll(Z)V
    .locals 1
    .param p1, "isFirstItem"    # Z

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$16;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripOverscroll(Z)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8500(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    .line 2998
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$16;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripScrollStarted()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8600(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 3003
    return-void
.end method

.method public onScrollStopped()V
    .locals 1

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$16;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripScrollStopped()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8700(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 3008
    return-void
.end method
