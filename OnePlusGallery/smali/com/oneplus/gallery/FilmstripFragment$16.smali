.class Lcom/oneplus/gallery/FilmstripFragment$16;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment;->movePageToRecycler(I)V
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
    .line 1531
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$16;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$16;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$16;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$3600(Lcom/oneplus/gallery/FilmstripFragment;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$3602(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1536
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$16;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->restoreMediaFromRecycler()V
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$3700(Lcom/oneplus/gallery/FilmstripFragment;)V

    .line 1537
    return-void
.end method
