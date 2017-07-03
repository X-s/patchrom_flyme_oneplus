.class Lcom/oneplus/gallery2/OPGalleryActivity$31;
.super Landroid/support/v4/view/PagerAdapter;
.source "OPGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_FragmentTransaction:Landroid/app/FragmentTransaction;

.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 2888
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 2895
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    .line 2896
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2897
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    .line 2906
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2908
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2913
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 2920
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    if-nez v3, :cond_0

    .line 2921
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    .line 2926
    :cond_0
    const/4 v1, 0x0

    .line 2927
    .local v1, "newFragment":Z
    packed-switch p2, :pswitch_data_0

    .line 2950
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 2930
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2932
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    new-instance v4, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {v4}, Lcom/oneplus/gallery2/GridViewFragment;-><init>()V

    # setter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v3, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$402(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/GridViewFragment;

    .line 2933
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v4

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultGridViewFragmentReady(Lcom/oneplus/gallery2/GridViewFragment;)V
    invoke-static {v3, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$3700(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/GridViewFragment;)V

    .line 2934
    const/4 v1, 0x1

    .line 2936
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    .line 2937
    .local v0, "fragment":Landroid/app/Fragment;
    const-string v2, "GalleryActivity.DefaultGridView"

    .line 2952
    .local v2, "tag":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    .line 2953
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2956
    :goto_1
    return-object v0

    .line 2940
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v2    # "tag":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;
    invoke-static {v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$1700(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/MediaSetListFragment;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2942
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    new-instance v4, Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-direct {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;-><init>()V

    # setter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;
    invoke-static {v3, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$1702(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/MediaSetListFragment;

    .line 2943
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;
    invoke-static {v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$1700(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/MediaSetListFragment;

    move-result-object v4

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetListFragmentReady(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    invoke-static {v3, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$3800(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/MediaSetListFragment;)V

    .line 2944
    const/4 v1, 0x1

    .line 2946
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;
    invoke-static {v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$1700(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/MediaSetListFragment;

    move-result-object v0

    .line 2947
    .restart local v0    # "fragment":Landroid/app/Fragment;
    const-string v2, "GalleryActivity.MediaSetList"

    .line 2948
    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 2955
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$31;->m_FragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v3, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 2927
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 2962
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
