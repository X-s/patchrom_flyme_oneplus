.class Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;
.super Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FooterFilmstripItem"
.end annotation


# instance fields
.field private final m_CoverText:Landroid/widget/TextView;

.field private final m_ImageView:Landroid/widget/ImageView;

.field private final m_SelectedRectFrame:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    .line 805
    const v1, 0x7f030016

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;I)V

    .line 806
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->getContainer()Landroid/view/View;

    move-result-object v0

    .line 809
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_ImageView:Landroid/widget/ImageView;

    .line 810
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 811
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_ImageView:Landroid/widget/ImageView;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterImageViewOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3800(Lcom/oneplus/gallery2/BurstViewerFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    const v1, 0x7f060066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_SelectedRectFrame:Landroid/widget/ImageView;

    .line 817
    const v1, 0x7f060067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_CoverText:Landroid/widget/TextView;

    .line 820
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 821
    return-void
.end method


# virtual methods
.method public setCoverImageVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 826
    if-eqz p1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_CoverText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_CoverText:Landroid/widget/TextView;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_CoverText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 841
    if-eqz p1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    :cond_0
    return-void
.end method

.method public setLowResThumb(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 849
    if-eqz p1, :cond_0

    .line 850
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 851
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 857
    if-eqz p1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_SelectedRectFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_SelectedRectFrame:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 868
    if-nez p1, :cond_0

    .line 896
    :goto_0
    return-void

    .line 872
    :cond_0
    const/4 v1, 0x0

    .line 875
    .local v1, "imageViewVisibility":I
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v2

    .line 876
    .local v2, "size":Landroid/util/Size;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gtz v3, :cond_2

    .line 878
    :cond_1
    const/16 v1, 0x8

    .line 880
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 883
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3600(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 884
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->setSelected(Z)V

    .line 889
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/GroupedMedia;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    .line 890
    .local v0, "coverMedia":Lcom/oneplus/gallery2/media/Media;
    :goto_2
    if-ne v0, p1, :cond_5

    .line 891
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->setCoverImageVisibility(Z)V

    .line 895
    :goto_3
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3900(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "updateMedia() - footer, File path: "

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ", hash: "

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 886
    .end local v0    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->setSelected(Z)V

    goto :goto_1

    .line 889
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 893
    .restart local v0    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->setCoverImageVisibility(Z)V

    goto :goto_3
.end method

.method public updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 902
    if-nez p1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_ImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->m_ImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
