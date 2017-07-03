.class Lcom/oneplus/gallery/OPGallery$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->addTo(Ljava/util/List;Ljava/util/Set;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

.field final synthetic val$dialogFragmentRef:Lcom/oneplus/base/Ref;

.field final synthetic val$media:Ljava/util/List;

.field final synthetic val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Ljava/util/List;Lcom/oneplus/base/Ref;Lcom/oneplus/base/OperationCallbackHelper;Lcom/oneplus/gallery/media/MediaSetList;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$2;->val$media:Ljava/util/List;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$2;->val$dialogFragmentRef:Lcom/oneplus/base/Ref;

    iput-object p4, p0, Lcom/oneplus/gallery/OPGallery$2;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    iput-object p5, p0, Lcom/oneplus/gallery/OPGallery$2;->val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/OPGallery$2;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery$2;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGallery$2;->complete()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/OPGallery$2;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery$2;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGallery$2;->cancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/OPGallery$2;Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGallery$2;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGallery$2;->addToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method

.method private addToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/OPGallery$2;->addToMediaSet(Lcom/oneplus/gallery/media/MediaSet;I)V

    .line 179
    return-void
.end method

.method private addToMediaSet(Lcom/oneplus/gallery/media/MediaSet;I)V
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "flags"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2;->val$media:Ljava/util/List;

    new-instance v3, Lcom/oneplus/gallery/OPGallery$2$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/OPGallery$2$1;-><init>(Lcom/oneplus/gallery/OPGallery$2;)V

    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    invoke-virtual {v2}, Lcom/oneplus/gallery/OPGallery;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object v2, p1

    move v5, p2

    # invokes: Lcom/oneplus/gallery/OPGallery;->addToInternal(Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z
    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery/OPGallery;->access$400(Lcom/oneplus/gallery/OPGallery;Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z

    .line 200
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2;->val$dialogFragmentRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 208
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method private complete()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    .line 215
    return-void
.end method


# virtual methods
.method public onAddItemClicked()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    new-instance v1, Lcom/oneplus/gallery/OPGallery$2$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/OPGallery$2$2;-><init>(Lcom/oneplus/gallery/OPGallery$2;)V

    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    invoke-virtual {v2}, Lcom/oneplus/gallery/OPGallery;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/OPGallery;->createAlbum(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    .line 252
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2;->val$dialogFragmentRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 253
    return-void
.end method

.method public onItemClicked(IJ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 258
    const-wide/16 v2, -0xd

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery$2;->onAddItemClicked()V

    .line 291
    :goto_0
    return-void

    .line 260
    :cond_0
    const-wide/16 v2, -0xf

    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    # getter for: Lcom/oneplus/gallery/OPGallery;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v1}, Lcom/oneplus/gallery/OPGallery;->access$600(Lcom/oneplus/gallery/OPGallery;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v1

    const-string v2, "Gallery.SetFavorite"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "true"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$2;->val$media:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 265
    const/4 v1, 0x0

    invoke-direct {p0, v1, v7}, Lcom/oneplus/gallery/OPGallery$2;->addToMediaSet(Lcom/oneplus/gallery/media/MediaSet;I)V

    .line 267
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2;->val$dialogFragmentRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 269
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2;->val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-gez v1, :cond_3

    .line 271
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2;->val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    long-to-int v2, p2

    invoke-interface {v1, v2}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    .line 272
    .local v0, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    if-eqz v0, :cond_2

    .line 275
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGallery$2;->addToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 278
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2;->val$dialogFragmentRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "addTo() - Media set is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGallery$2;->cancel()V

    goto :goto_0

    .line 288
    .end local v0    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "addTo() - Incorrect item id"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGallery$2;->cancel()V

    goto :goto_0
.end method

.method public onOutsideListViewClicked()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGallery$2;->cancel()V

    .line 297
    return-void
.end method
