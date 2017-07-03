.class Lcom/oneplus/gallery2/GridViewFragment$15;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/GridViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0

    .prologue
    .line 2451
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$15;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$15;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$2500(Lcom/oneplus/gallery2/GridViewFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$15;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->exitSelectionMode()V
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$2400(Lcom/oneplus/gallery2/GridViewFragment;)V

    .line 2456
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$15;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2460
    :goto_0
    return-void

    .line 2458
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$15;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->goBack()Z

    goto :goto_0
.end method
