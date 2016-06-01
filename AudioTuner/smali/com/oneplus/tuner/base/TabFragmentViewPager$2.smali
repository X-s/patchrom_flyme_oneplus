.class Lcom/oneplus/tuner/base/TabFragmentViewPager$2;
.super Ljava/lang/Object;
.source "TabFragmentViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/base/TabFragmentViewPager;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/TabFragmentViewPager;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$200(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$200(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$200(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$200(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 106
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$100(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->setCurrentTab(I)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$200(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$200(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 99
    :cond_0
    return-void
.end method
