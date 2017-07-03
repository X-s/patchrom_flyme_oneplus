.class Lcom/oneplus/gallery/Gallery$4;
.super Lcom/oneplus/base/Handle;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/Gallery;->notifyShowDialog()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/Gallery;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/Gallery;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/oneplus/gallery/Gallery$4;->this$0:Lcom/oneplus/gallery/Gallery;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery$4;->this$0:Lcom/oneplus/gallery/Gallery;

    # getter for: Lcom/oneplus/gallery/Gallery;->m_GalleryDialogHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery/Gallery;->access$900(Lcom/oneplus/gallery/Gallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery$4;->this$0:Lcom/oneplus/gallery/Gallery;

    # getter for: Lcom/oneplus/gallery/Gallery;->m_GalleryDialogHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery/Gallery;->access$900(Lcom/oneplus/gallery/Gallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery$4;->this$0:Lcom/oneplus/gallery/Gallery;

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery/Gallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->access$1000(Lcom/oneplus/gallery/Gallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 676
    :cond_0
    return-void
.end method
