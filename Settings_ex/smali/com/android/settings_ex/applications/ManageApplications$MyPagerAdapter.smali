.class Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field mCurPos:I

.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 1

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 534
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 552
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 553
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$000(Lcom/android/settings_ex/applications/ManageApplications;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 543
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 544
    .local v1, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$200(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications;->access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 545
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 546
    const v2, 0x7f0f0029

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 547
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 557
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->updateCurrentTab(I)V

    .line 650
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # invokes: Lcom/android/settings_ex/applications/ManageApplications;->updateNumTabs()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$900(Lcom/android/settings_ex/applications/ManageApplications;)V

    .line 657
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 574
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const v7, -0x48000001

    const/high16 v6, 0x41600000    # 14.0f

    const v5, 0x72ffffff

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v3, 0x2

    .line 579
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    .line 581
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 583
    packed-switch p1, :pswitch_data_0

    .line 643
    :goto_0
    return-void

    .line 585
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 589
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 595
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 600
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 601
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 605
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 610
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 611
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 613
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 623
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 628
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 629
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 631
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
