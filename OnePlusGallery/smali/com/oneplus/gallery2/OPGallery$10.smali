.class Lcom/oneplus/gallery2/OPGallery$10;
.super Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery;->deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;

.field final synthetic val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

.field final synthetic val$deletedCount:[I

.field final synthetic val$dialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

.field final synthetic val$isDialogShownRef:Lcom/oneplus/base/Ref;

.field final synthetic val$mediaSetToDelete:Ljava/util/List;

.field final synthetic val$progressBarRef:Lcom/oneplus/base/Ref;

.field final synthetic val$progressRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;[ILjava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;Lcom/oneplus/gallery2/GalleryDialogFragment;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$10;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    iput-object p3, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$deletedCount:[I

    iput-object p4, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$mediaSetToDelete:Ljava/util/List;

    iput-object p5, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$progressRef:Lcom/oneplus/base/Ref;

    iput-object p6, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

    iput-object p7, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$dialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    iput-object p8, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$isDialogShownRef:Lcom/oneplus/base/Ref;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery2/media/MediaSet;ZI)V
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "success"    # Z
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1013
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # getter for: Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGallery;->access$600(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/AppTracker;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1014
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$10;->this$0:Lcom/oneplus/gallery2/OPGallery;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    const-class v4, Lcom/oneplus/gallery2/AppTracker;

    invoke-virtual {v1, v4}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/AppTracker;

    # setter for: Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;
    invoke-static {v3, v1}, Lcom/oneplus/gallery2/OPGallery;->access$602(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/AppTracker;)Lcom/oneplus/gallery2/AppTracker;

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # getter for: Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGallery;->access$600(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/AppTracker;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1016
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # getter for: Lcom/oneplus/gallery2/OPGallery;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGallery;->access$600(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/AppTracker;

    move-result-object v1

    const-string v3, "Gallery.DeleteMediaSet"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->getType()Lcom/oneplus/gallery2/media/MediaSet$Type;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v5}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v1, v3, v2, v4}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 1019
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$deletedCount:[I

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1020
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$deletedCount:[I

    aget v1, v1, v2

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$mediaSetToDelete:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_6

    .line 1021
    .local v0, "isLastMedia":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1022
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->this$0:Lcom/oneplus/gallery2/OPGallery;

    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    # invokes: Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v1, v3, v4}, Lcom/oneplus/gallery2/OPGallery;->access$1000(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1025
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$progressRef:Lcom/oneplus/base/Ref;

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$deletedCount:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$mediaSetToDelete:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1026
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1028
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1029
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$progressRef:Lcom/oneplus/base/Ref;

    invoke-interface {v2}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$progressBarRef:Lcom/oneplus/base/Ref;

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

    .line 1031
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$dialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$isDialogShownRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1032
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$dialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 1034
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    if-eqz v1, :cond_5

    .line 1036
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    .line 1037
    if-eqz v0, :cond_5

    .line 1038
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;->onDeletionProcessCompleted()V

    .line 1040
    :cond_5
    return-void

    .end local v0    # "isLastMedia":Z
    :cond_6
    move v0, v2

    .line 1020
    goto/16 :goto_0
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery2/media/MediaSet;I)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "flags"    # I

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$10;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1007
    :cond_0
    return-void
.end method
