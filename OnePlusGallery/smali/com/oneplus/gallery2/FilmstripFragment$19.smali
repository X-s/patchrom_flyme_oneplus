.class Lcom/oneplus/gallery2/FilmstripFragment$19;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 1963
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 1967
    if-nez p1, :cond_0

    .line 2000
    :goto_0
    return v1

    .line 1969
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1997
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$5400(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onMenuItemClick() - Unknown menu item id"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1972
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I
    invoke-static {v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$5000(Lcom/oneplus/gallery2/FilmstripFragment;)I

    move-result v2

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->setWallpaper(I)V
    invoke-static {v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$5100(Lcom/oneplus/gallery2/FilmstripFragment;I)V

    .line 2000
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1975
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I
    invoke-static {v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$5000(Lcom/oneplus/gallery2/FilmstripFragment;)I

    move-result v2

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->showPageDetails(I)V
    invoke-static {v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$5200(Lcom/oneplus/gallery2/FilmstripFragment;I)V

    goto :goto_1

    .line 1978
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1979
    .local v0, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery2/media/Media;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->getCurrentMedia()Lcom/oneplus/gallery2/media/Media;
    invoke-static {v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$5300(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/OPGallery;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSet;

    new-instance v3, Lcom/oneplus/gallery2/FilmstripFragment$19$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/FilmstripFragment$19$1;-><init>(Lcom/oneplus/gallery2/FilmstripFragment$19;)V

    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/oneplus/gallery2/OPGallery;->addTo(Ljava/util/List;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    goto :goto_1

    .line 1969
    nop

    :pswitch_data_0
    .packed-switch 0x7f06009d
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
