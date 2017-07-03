.class Lcom/oneplus/gallery/FilmstripFragment$20;
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
    .line 1877
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$20;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$20;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$20;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I
    invoke-static {v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$3900(Lcom/oneplus/gallery/FilmstripFragment;)I

    move-result v1

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->sharePage(I)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$4600(Lcom/oneplus/gallery/FilmstripFragment;I)V

    .line 1882
    return-void
.end method
