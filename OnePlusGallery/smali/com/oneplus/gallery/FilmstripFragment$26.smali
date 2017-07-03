.class Lcom/oneplus/gallery/FilmstripFragment$26;
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
    .line 3362
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$26;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$26;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$5602(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;)Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    .line 3367
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$26;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$800(Lcom/oneplus/gallery/FilmstripFragment;)V

    .line 3368
    return-void
.end method
