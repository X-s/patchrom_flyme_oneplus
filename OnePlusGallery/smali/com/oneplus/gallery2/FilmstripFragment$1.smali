.class Lcom/oneplus/gallery2/FilmstripFragment$1;
.super Lcom/oneplus/widget/FilmstripView$ScrollListener;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/FilmstripFragment;
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
    .line 195
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$1;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentItemChanged(II)V
    .locals 3
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$1;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;Z)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$000(Lcom/oneplus/gallery2/FilmstripFragment;Ljava/lang/Integer;Z)Z

    .line 200
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$1;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onScrollStarted()V
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$100(Lcom/oneplus/gallery2/FilmstripFragment;)V

    .line 206
    return-void
.end method

.method public onScrollStopped()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$1;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onScrollStopped()V
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$200(Lcom/oneplus/gallery2/FilmstripFragment;)V

    .line 212
    return-void
.end method
