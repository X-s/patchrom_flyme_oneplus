.class Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1$1;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1$1;->this$3:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 694
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1$1;->this$3:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;->this$2:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1$1;->this$3:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;->this$2:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3600(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->deletePage(I)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3800(Lcom/oneplus/gallery/CameraGalleryImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1$1;->this$3:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;->this$2:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1$1;->this$3:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1$1;->this$2:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3602(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 697
    return-void
.end method
