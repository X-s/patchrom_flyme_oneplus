.class final Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
.super Ljava/lang/Object;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubMediaItem"
.end annotation


# instance fields
.field public final baseView:Landroid/view/View;

.field public final checkBoxView:Landroid/widget/ImageView;

.field public final imageView:Lcom/oneplus/widget/ScaleImageView;

.field public media:Lcom/oneplus/gallery2/media/Media;

.field public mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

.field public mediaIndex:I

.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 3
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-virtual {p1}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->baseView:Landroid/view/View;

    .line 333
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->baseView:Landroid/view/View;

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    .line 334
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$1;-><init>(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 343
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$2;-><init>(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V

    .line 362
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->baseView:Landroid/view/View;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->checkBoxView:Landroid/widget/ImageView;

    .line 329
    return-void
.end method
