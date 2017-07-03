.class Lcom/oneplus/gallery/FilmstripFragment$1;
.super Lcom/oneplus/widget/FilmstripView$ScrollListener;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/FilmstripFragment;
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
    .line 181
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$1;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentItemChanged(II)V
    .locals 3
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$1;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;Z)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$000(Lcom/oneplus/gallery/FilmstripFragment;Ljava/lang/Integer;Z)Z

    .line 186
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$1;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->onScrollStarted()V
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$100(Lcom/oneplus/gallery/FilmstripFragment;)V

    .line 192
    return-void
.end method

.method public onScrollStopped()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$1;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->onScrollStopped()V
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$200(Lcom/oneplus/gallery/FilmstripFragment;)V

    .line 198
    return-void
.end method
