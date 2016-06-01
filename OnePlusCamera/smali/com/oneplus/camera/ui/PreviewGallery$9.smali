.class Lcom/oneplus/camera/ui/PreviewGallery$9;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery;->setOnPageChangeListener(Lcom/oneplus/camera/ui/CameraPager;Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery;

.field final synthetic val$adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

.field final synthetic val$pager:Lcom/oneplus/camera/ui/CameraPager;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/CameraPager;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->val$adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    iput-object p3, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->val$pager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 821
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->val$adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->resetPages()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1600(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 824
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 828
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->val$pager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v2}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v0

    .line 829
    .local v0, "current":I
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->val$pager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v2}, Lcom/oneplus/camera/ui/CameraPager;->getVisibility()I

    move-result v1

    .line 830
    .local v1, "visibility":I
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$2800(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positionOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionOffsetPixels: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_2

    .line 832
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$2900(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set alpha"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-float v4, v5, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_BG:Landroid/view/View;
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3000(Lcom/oneplus/camera/ui/PreviewGallery;)Landroid/view/View;

    move-result-object v2

    mul-float v3, v5, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 836
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3100(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p3, :cond_5

    .line 837
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->bringToBack()V
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3200(Lcom/oneplus/camera/ui/PreviewGallery;)V

    .line 844
    :cond_2
    :goto_0
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3100(Lcom/oneplus/camera/ui/PreviewGallery;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_4

    if-eqz v0, :cond_3

    if-ne v0, v6, :cond_4

    .line 845
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->bringToFront()V
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3400(Lcom/oneplus/camera/ui/PreviewGallery;)V

    .line 847
    :cond_4
    return-void

    .line 838
    :cond_5
    const/16 v2, 0x64

    if-le p3, v2, :cond_2

    .line 839
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/4 v3, 0x0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->bringToFront(Z)V
    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3300(Lcom/oneplus/camera/ui/PreviewGallery;Z)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 851
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3500(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageSelected() - Type : portrait, position : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 852
    if-nez p1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->bringToBack()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3200(Lcom/oneplus/camera/ui/PreviewGallery;)V

    .line 854
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->enableCamera()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3600(Lcom/oneplus/camera/ui/PreviewGallery;)V

    .line 860
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->val$adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3800(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V
    invoke-static {v1, v2, p1, v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3900(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    .line 861
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # setter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I
    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3802(Lcom/oneplus/camera/ui/PreviewGallery;I)I

    .line 862
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->bringToFront()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3400(Lcom/oneplus/camera/ui/PreviewGallery;)V

    .line 857
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$9;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->disableCamera()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$3700(Lcom/oneplus/camera/ui/PreviewGallery;)V

    goto :goto_0

    .line 860
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
