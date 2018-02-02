.class Lcom/oneplus/gallery/CameraGalleryImpl$32;
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
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 5203
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$32;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentItemChanged(II)V
    .locals 1
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    .line 5223
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$32;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap28(Lcom/oneplus/gallery/CameraGalleryImpl;II)V

    .line 5221
    return-void
.end method

.method public onOverScroll(Z)V
    .locals 1
    .param p1, "isFirstItem"    # Z

    .prologue
    .line 5208
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$32;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap32(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    .line 5206
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 5213
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$32;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap33(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 5211
    return-void
.end method

.method public onScrollStopped()V
    .locals 1

    .prologue
    .line 5218
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$32;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap34(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 5216
    return-void
.end method
