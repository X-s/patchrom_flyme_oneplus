.class Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter$1;
    }
.end annotation


# instance fields
.field private final EMPTY_STATE_SET:[I

.field private final GROUP_EXPANDED_STATE_SET:[I

.field private final HIDE_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private final SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private final mGroupPosition:I

.field private mHeaderView:Landroid/view/ViewGroup;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mIsListExpanded:Z

.field private mListView:Landroid/widget/ListView;

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;I)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p2, "parent"    # Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;
    .param p3, "groupPosition"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 538
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 505
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->GROUP_EXPANDED_STATE_SET:[I

    .line 506
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->EMPTY_STATE_SET:[I

    .line 507
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 508
    const/4 v1, -0x2

    .line 507
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->HIDE_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 509
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 510
    const/high16 v1, 0x3f800000    # 1.0f

    .line 509
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 519
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter$1;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 532
    iput-boolean v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 539
    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    .line 540
    iput p3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    .line 541
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 538
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;ILcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p2, "parent"    # Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;
    .param p3, "groupPosition"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;I)V

    return-void
.end method

.method private checkGroupExpandableAndStartWarningActivity()Z
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result v0

    return v0
.end method

.method private getGroupIndicator()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 630
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 631
    sget-object v3, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    .line 630
    const/4 v4, 0x0

    .line 632
    const v5, 0x101006f

    .line 630
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 633
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 635
    .local v1, "groupIndicator":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 636
    return-object v1
.end method

.method private refreshViews()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 621
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->GROUP_EXPANDED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 623
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 624
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->EMPTY_STATE_SET:[I

    goto :goto_0

    .line 623
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->HIDE_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->getItem(I)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    .line 558
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetInvalidated()V

    .line 563
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 571
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->checkGroupExpandableAndStartWarningActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 572
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->refreshViews()V

    .line 570
    return-void

    .line 571
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {p0, p3}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->getItem(I)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-wrap2(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    .line 576
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    .line 612
    const/4 v2, 0x0

    .line 611
    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 613
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->refreshViews()V

    .line 610
    return-void
.end method

.method public setContainerViewId(I)V
    .locals 5
    .param p1, "viewId"    # I

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get3(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    .line 582
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v2, 0x7f110334

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    .line 585
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 586
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 588
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v2, 0x7f110330

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    .line 589
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v2, 0x7f110332

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    .line 592
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->getGroupIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v2, 0x7f110333

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 594
    check-cast v0, Landroid/widget/FrameLayout;

    .line 597
    .local v0, "headerContentContainer":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    iget v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 596
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 580
    return-void
.end method

.method public showDivider(Z)V
    .locals 3
    .param p1, "showDivider"    # Z

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v2, 0x7f110331

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 607
    .local v0, "dividerView":Landroid/view/View;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    return-void

    .line 607
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showHeader(Z)V
    .locals 2
    .param p1, "showHeader"    # Z

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 601
    return-void

    .line 602
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
