.class Lcom/oneplus/gallery2/OPGallery$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$1;->this$0:Lcom/oneplus/gallery2/OPGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$1;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # getter for: Lcom/oneplus/gallery2/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGallery;->access$000(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$1;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # getter for: Lcom/oneplus/gallery2/OPGallery;->m_SharingMediaCallback:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGallery;->access$000(Lcom/oneplus/gallery2/OPGallery;)Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;->onShareCompleted(I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$1;->this$0:Lcom/oneplus/gallery2/OPGallery;

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery2/OPGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery2/OPGallery;->access$100(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 77
    return-void
.end method
