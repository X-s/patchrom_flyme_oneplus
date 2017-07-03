.class Lcom/oneplus/gallery/OPGallery$13;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$callback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

.field final synthetic val$deletedCount:[I

.field final synthetic val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

.field final synthetic val$mediaSetToDelete:Ljava/util/List;

.field final synthetic val$progressBarRef:Lcom/oneplus/base/Ref;

.field final synthetic val$progressRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;[ILjava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/gallery/GalleryDialogFragment;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$13;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$13;->val$callback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$13;->val$deletedCount:[I

    iput-object p4, p0, Lcom/oneplus/gallery/OPGallery$13;->val$mediaSetToDelete:Ljava/util/List;

    iput-object p5, p0, Lcom/oneplus/gallery/OPGallery$13;->val$progressRef:Lcom/oneplus/base/Ref;

    iput-object p6, p0, Lcom/oneplus/gallery/OPGallery$13;->val$progressBarRef:Lcom/oneplus/base/Ref;

    iput-object p7, p0, Lcom/oneplus/gallery/OPGallery$13;->val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "success"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1039
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->this$0:Lcom/oneplus/gallery/OPGallery;

    # getter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery/OPGallery;->access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1040
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$13;->this$0:Lcom/oneplus/gallery/OPGallery;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const-class v4, Lcom/oneplus/gallery/AppTracker;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/AppTracker;

    # setter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v3, v1}, Lcom/oneplus/gallery/OPGallery;->access$602(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/AppTracker;)Lcom/oneplus/gallery/AppTracker;

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->this$0:Lcom/oneplus/gallery/OPGallery;

    # getter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery/OPGallery;->access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->this$0:Lcom/oneplus/gallery/OPGallery;

    # getter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery/OPGallery;->access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v1

    const-string v3, "Gallery.DeleteMediaSet"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v5}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v1, v3, v2, v4}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 1045
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$deletedCount:[I

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1046
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$deletedCount:[I

    aget v1, v1, v2

    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$13;->val$mediaSetToDelete:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_6

    .line 1047
    .local v0, "isLastMedia":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1048
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->this$0:Lcom/oneplus/gallery/OPGallery;

    sget-object v3, Lcom/oneplus/gallery/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    # invokes: Lcom/oneplus/gallery/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v1, v3, v4}, Lcom/oneplus/gallery/OPGallery;->access$1000(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1051
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$progressRef:Lcom/oneplus/base/Ref;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$13;->val$deletedCount:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery$13;->val$mediaSetToDelete:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1052
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1054
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1055
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$13;->val$progressRef:Lcom/oneplus/base/Ref;

    invoke-interface {v2}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$13;->val$progressBarRef:Lcom/oneplus/base/Ref;

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

    .line 1057
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    if-eqz v1, :cond_4

    .line 1058
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 1060
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$callback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    if-eqz v1, :cond_5

    .line 1062
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$callback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 1063
    if-eqz v0, :cond_5

    .line 1064
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$13;->val$callback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    invoke-virtual {v1}, Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;->onDeletionProcessCompleted()V

    .line 1066
    :cond_5
    return-void

    .end local v0    # "isLastMedia":Z
    :cond_6
    move v0, v2

    .line 1046
    goto :goto_0
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$13;->val$callback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$13;->val$callback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1033
    :cond_0
    return-void
.end method
