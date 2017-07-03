.class Lcom/oneplus/gallery2/FilmstripFragment$24;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 2058
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$24;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$24;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$24;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I
    invoke-static {v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$5000(Lcom/oneplus/gallery2/FilmstripFragment;)I

    move-result v1

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->deletePage(I)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$6000(Lcom/oneplus/gallery2/FilmstripFragment;I)V

    .line 2063
    return-void
.end method
