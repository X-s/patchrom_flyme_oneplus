.class Lcom/oneplus/gallery/OPGallery$2$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$2;->onAddItemClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/OperationCallback",
        "<",
        "Ljava/lang/Object;",
        "Lcom/oneplus/gallery/media/MediaSet;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$2;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$2;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$2$2;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2$2;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    sget-object v2, Lcom/oneplus/gallery/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity;

    .line 242
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-nez v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2$2;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery$2;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "addTo() - No activity to show dialog"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$2$2;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery$2;->val$dialogFragmentRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GalleryDialogFragment;

    const-string v2, "Gallery.AddTo"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompleted(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2$2;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    # invokes: Lcom/oneplus/gallery/OPGallery$2;->addToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/OPGallery$2;->access$500(Lcom/oneplus/gallery/OPGallery$2;Lcom/oneplus/gallery/media/MediaSet;)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$2$2;->this$1:Lcom/oneplus/gallery/OPGallery$2;

    # invokes: Lcom/oneplus/gallery/OPGallery$2;->cancel()V
    invoke-static {v0}, Lcom/oneplus/gallery/OPGallery$2;->access$300(Lcom/oneplus/gallery/OPGallery$2;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p1, Lcom/oneplus/gallery/media/MediaSet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/OPGallery$2$2;->onCompleted(Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 223
    return-void
.end method
