.class Lcom/oneplus/gallery2/FilmstripFragment$28;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment;->updateToolbarVisibility(Z)V
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
    .line 3632
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$28;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$28;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$6700(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3637
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$28;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$6602(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;)Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    .line 3638
    return-void
.end method
