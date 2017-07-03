.class Lcom/oneplus/gallery/FilmstripFragment$28;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment;->updateToolbarVisibility(Z)V
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
    .line 3431
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$28;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$28;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$5800(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3436
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$28;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$5602(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;)Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    .line 3437
    return-void
.end method
