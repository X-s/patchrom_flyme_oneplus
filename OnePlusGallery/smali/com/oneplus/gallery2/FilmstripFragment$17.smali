.class Lcom/oneplus/gallery2/FilmstripFragment$17;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment;->movePageToRecycler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$17;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$17;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$17;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4700(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4702(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1700
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$17;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->restoreMediaFromRecycler()V
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4800(Lcom/oneplus/gallery2/FilmstripFragment;)V

    .line 1701
    return-void
.end method
