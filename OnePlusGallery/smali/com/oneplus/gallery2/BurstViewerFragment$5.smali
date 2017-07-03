.class Lcom/oneplus/gallery2/BurstViewerFragment$5;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 228
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$5;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 232
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$5;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;
    invoke-static {v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$5;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;

    .line 236
    .local v0, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->getPosition()I

    move-result v1

    .line 239
    .local v1, "pos":I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$5;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$5;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$800(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() - invalid pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$5;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$900(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onClick() - click footer pos:"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$5;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZZ)V
    invoke-static {v2, v3, v5, v4, v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$200(Lcom/oneplus/gallery2/BurstViewerFragment;Ljava/lang/Integer;ZZZ)V

    goto :goto_0
.end method
