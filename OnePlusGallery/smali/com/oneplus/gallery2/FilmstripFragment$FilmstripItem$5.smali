.class Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

.field final synthetic val$this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iput-object p2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;->val$this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 536
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v2, v2, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->deleteMediaFromRecycler()V
    invoke-static {v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$600(Lcom/oneplus/gallery2/FilmstripFragment;)V

    .line 538
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v2, v2, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->cancelHideToolbar()V
    invoke-static {v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$700(Lcom/oneplus/gallery2/FilmstripFragment;)V

    .line 541
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v2, v2, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;
    invoke-static {v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3400(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 543
    .local v1, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 544
    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_0

    .line 548
    .end local v1    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v2, v2, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment;->EVENT_BURST_VIEWER_BUTTON_CLICK:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3500(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 549
    return-void
.end method
