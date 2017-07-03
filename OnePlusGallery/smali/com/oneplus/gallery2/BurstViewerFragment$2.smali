.class Lcom/oneplus/gallery2/BurstViewerFragment$2;
.super Lcom/oneplus/widget/FilmstripView$ScrollListener;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$2;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentItemChanged(II)V
    .locals 0
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onScrollStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$2;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$2;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;
    invoke-static {v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZZ)V
    invoke-static {v0, v1, v3, v2, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$200(Lcom/oneplus/gallery2/BurstViewerFragment;Ljava/lang/Integer;ZZZ)V

    .line 169
    return-void
.end method
