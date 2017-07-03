.class Lcom/oneplus/gallery2/MediaSetListFragment$16;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaSetListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetListFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$16;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1343
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1340
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$16;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$16;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$4500(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$16;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetDeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;
    invoke-static {v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$4600(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->deleteMediaSet(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)Z

    goto :goto_0

    .line 1337
    nop

    :pswitch_data_0
    .packed-switch 0x7f06009c
        :pswitch_0
    .end packed-switch
.end method
