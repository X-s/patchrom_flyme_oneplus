.class Lcom/oneplus/gallery/FilmstripFragment$21;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$21;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$21;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$4700(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$21;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$4700(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1892
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$21;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$21;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I
    invoke-static {v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$3900(Lcom/oneplus/gallery/FilmstripFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$21;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;
    invoke-static {v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$4700(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->collectPage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$4800(Lcom/oneplus/gallery/FilmstripFragment;IZ)V

    .line 1893
    return-void

    .line 1891
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
