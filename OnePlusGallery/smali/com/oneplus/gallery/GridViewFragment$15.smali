.class Lcom/oneplus/gallery/GridViewFragment$15;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/GridViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0

    .prologue
    .line 2420
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$15;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$15;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$2200(Lcom/oneplus/gallery/GridViewFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2424
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$15;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->exitSelectionMode()V
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$2100(Lcom/oneplus/gallery/GridViewFragment;)V

    .line 2425
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$15;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2429
    :goto_0
    return-void

    .line 2427
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$15;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->goBack()Z

    goto :goto_0
.end method
