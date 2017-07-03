.class Lcom/oneplus/gallery/OPGalleryActivity$26$1;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGalleryActivity$26;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity$26;)V
    .locals 0

    .prologue
    .line 2553
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2557
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$3500(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget v2, v2, Lcom/oneplus/gallery/OPGalleryActivity$26;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1400(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/MediaSetListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1400(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/MediaSetListFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$200(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$200(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2561
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$3600(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageSelected() - in selection mode, return"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    :goto_0
    return-void

    .line 2564
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$3700(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget v1, v1, Lcom/oneplus/gallery/OPGalleryActivity$26;->val$position:I

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2565
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$3800(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/AppTracker;

    move-result-object v0

    const-string v1, "Gallery.EnterTab"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity$26$1;->this$1:Lcom/oneplus/gallery/OPGalleryActivity$26;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGalleryActivity$26;->val$tab:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    goto :goto_0
.end method
