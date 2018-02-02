.class final Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
.super Ljava/lang/Object;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubMediaThumbItem"
.end annotation


# instance fields
.field public final baseView:Landroid/view/View;

.field public final bestShotTextView:Landroid/view/View;

.field public final imageView:Landroid/widget/ImageView;

.field public final imageViewSelectedOverlay:Landroid/view/View;

.field public media:Lcom/oneplus/gallery2/media/Media;

.field public mediaIndex:I

.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 3
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    invoke-virtual {p1}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->baseView:Landroid/view/View;

    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->baseView:Landroid/view/View;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageView:Landroid/widget/ImageView;

    .line 382
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem$1;-><init>(Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->baseView:Landroid/view/View;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageViewSelectedOverlay:Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->baseView:Landroid/view/View;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->bestShotTextView:Landroid/view/View;

    .line 378
    return-void
.end method
