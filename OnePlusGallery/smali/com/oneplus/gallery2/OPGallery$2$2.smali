.class Lcom/oneplus/gallery2/OPGallery$2$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery$2;->onAddItemClicked()V
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
        "[",
        "Lcom/oneplus/gallery2/media/AlbumMediaSet;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/OPGallery$2;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery$2;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$2$2;->this$1:Lcom/oneplus/gallery2/OPGallery$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$2$2;->this$1:Lcom/oneplus/gallery2/OPGallery$2;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$2;->this$0:Lcom/oneplus/gallery2/OPGallery;

    sget-object v2, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 239
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$2$2;->this$1:Lcom/oneplus/gallery2/OPGallery$2;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$2;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v2, "addTo() - No activity to show dialog"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$2$2;->this$1:Lcom/oneplus/gallery2/OPGallery$2;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$2;->val$dialogFragmentRef:Lcom/oneplus/base/Ref;

    invoke-interface {v1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/GalleryDialogFragment;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery$2$2;->this$1:Lcom/oneplus/gallery2/OPGallery$2;

    iget-object v2, v2, Lcom/oneplus/gallery2/OPGallery$2;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    const-string v3, "Gallery.AddTo"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/OPGallery$2$2;->onCompleted([Lcom/oneplus/gallery2/media/AlbumMediaSet;)V

    return-void
.end method

.method public onCompleted([Lcom/oneplus/gallery2/media/AlbumMediaSet;)V
    .locals 2
    .param p1, "mediaSets"    # [Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$2$2;->this$1:Lcom/oneplus/gallery2/OPGallery$2;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    # invokes: Lcom/oneplus/gallery2/OPGallery$2;->addToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/OPGallery$2;->access$500(Lcom/oneplus/gallery2/OPGallery$2;Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$2$2;->this$1:Lcom/oneplus/gallery2/OPGallery$2;

    # invokes: Lcom/oneplus/gallery2/OPGallery$2;->cancel()V
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGallery$2;->access$300(Lcom/oneplus/gallery2/OPGallery$2;)V

    goto :goto_0
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 220
    return-void
.end method
