.class Lcom/oneplus/gallery/FilmstripFragment$18;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 1813
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 1817
    if-nez p1, :cond_0

    .line 1850
    :goto_0
    return v1

    .line 1819
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1847
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$4400(Lcom/oneplus/gallery/FilmstripFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onMenuItemClick() - Unknown menu item id"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1822
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I
    invoke-static {v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$3900(Lcom/oneplus/gallery/FilmstripFragment;)I

    move-result v2

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->setWallpaper(I)V
    invoke-static {v1, v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$4000(Lcom/oneplus/gallery/FilmstripFragment;I)V

    .line 1850
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1825
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I
    invoke-static {v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$3900(Lcom/oneplus/gallery/FilmstripFragment;)I

    move-result v2

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->showPageDetails(I)V
    invoke-static {v1, v2}, Lcom/oneplus/gallery/FilmstripFragment;->access$4100(Lcom/oneplus/gallery/FilmstripFragment;I)V

    goto :goto_1

    .line 1828
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1829
    .local v0, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery/media/Media;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->getCurrentMedia()Lcom/oneplus/gallery/media/Media;
    invoke-static {v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$4200(Lcom/oneplus/gallery/FilmstripFragment;)Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/OPGallery;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    new-instance v3, Lcom/oneplus/gallery/FilmstripFragment$18$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/FilmstripFragment$18$1;-><init>(Lcom/oneplus/gallery/FilmstripFragment$18;)V

    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/oneplus/gallery/OPGallery;->addTo(Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    goto :goto_1

    .line 1819
    nop

    :pswitch_data_0
    .packed-switch 0x7f06009d
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
