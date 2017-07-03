.class Lcom/oneplus/gallery/OPGallery$10;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaDeletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

.field final synthetic val$deletedCount:[I

.field final synthetic val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

.field final synthetic val$mediaList:Ljava/util/List;

.field final synthetic val$progressBarRef:Lcom/oneplus/base/Ref;

.field final synthetic val$progressRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;[ILjava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/gallery/GalleryDialogFragment;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$10;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$10;->val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$10;->val$deletedCount:[I

    iput-object p4, p0, Lcom/oneplus/gallery/OPGallery$10;->val$mediaList:Ljava/util/List;

    iput-object p5, p0, Lcom/oneplus/gallery/OPGallery$10;->val$progressRef:Lcom/oneplus/base/Ref;

    iput-object p6, p0, Lcom/oneplus/gallery/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

    iput-object p7, p0, Lcom/oneplus/gallery/OPGallery$10;->val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 834
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$10;->this$0:Lcom/oneplus/gallery/OPGallery;

    # getter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v2}, Lcom/oneplus/gallery/OPGallery;->access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v2

    const-string v3, "Gallery.DeleteMedia"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v4}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 837
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$10;->val$deletedCount:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 838
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$10;->val$deletedCount:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$10;->val$mediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    const/4 v0, 0x1

    .line 839
    .local v0, "isLastMedia":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 840
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$10;->this$0:Lcom/oneplus/gallery/OPGallery;

    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    # invokes: Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery/OPGallery;->access$800(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 843
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$10;->val$progressRef:Lcom/oneplus/base/Ref;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$10;->val$deletedCount:[I

    aget v1, v3, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$10;->val$mediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 844
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$10;->val$progressRef:Lcom/oneplus/base/Ref;

    invoke-interface {v2}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v2}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 846
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$10;->val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    if-eqz v1, :cond_2

    .line 847
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$10;->val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 850
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$10;->val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    if-eqz v1, :cond_3

    .line 852
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$10;->val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V

    .line 853
    if-eqz v0, :cond_3

    .line 854
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$10;->val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    invoke-virtual {v1}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;->onDeletionProcessCompleted()V

    .line 856
    :cond_3
    return-void

    .end local v0    # "isLastMedia":Z
    :cond_4
    move v0, v1

    .line 838
    goto :goto_0
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$10;->val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$10;->val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    .line 829
    :cond_0
    return-void
.end method
