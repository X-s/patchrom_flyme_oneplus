.class public Lcom/oneplus/tuner/base/TabFragmentViewPager;
.super Landroid/widget/LinearLayout;
.source "TabFragmentViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;
    }
.end annotation


# static fields
.field private static final TAB_SELECTED_TEXT_SIZE_SP:I = 0xe

.field private static final TAB_UNSELECTED_TEXT_SIZE_SP:I = 0xd

.field private static final VIEWPAGER_VIEW_ID:I = 0x1

.field private static titleTabHeight:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->titleTabHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mFragments:Ljava/util/List;

    .line 36
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mActivity:Landroid/app/Activity;

    .line 37
    invoke-direct {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mFragments:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mFragments:Ljava/util/List;

    .line 48
    invoke-direct {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/base/TabFragmentViewPager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/base/TabFragmentViewPager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/base/TabFragmentViewPager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/base/TabFragmentViewPager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mFragments:Ljava/util/List;

    return-object v0
.end method

.method private addTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->addTabs(Ljava/util/List;)V

    .line 133
    :cond_0
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 57
    invoke-virtual {p0, v6}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->setOrientation(I)V

    .line 58
    new-instance v2, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    .line 59
    sget v2, Lcom/oneplus/tuner/base/TabFragmentViewPager;->titleTabHeight:I

    if-ne v2, v5, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09034b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/oneplus/tuner/base/TabFragmentViewPager;->titleTabHeight:I

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/oneplus/tuner/base/TabFragmentViewPager;->titleTabHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "l":Landroid/widget/FrameLayout;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 68
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v2, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 71
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 72
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    iget-object v2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-direct {p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->initListener()V

    .line 78
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    new-instance v1, Lcom/oneplus/tuner/base/TabFragmentViewPager$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$1;-><init>(Lcom/oneplus/tuner/base/TabFragmentViewPager;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->setOnTabChangedListener(Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/TabFragmentViewPager$2;-><init>(Lcom/oneplus/tuner/base/TabFragmentViewPager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 115
    return-void
.end method


# virtual methods
.method public addFragments(Ljava/util/List;Landroid/app/FragmentManager;)V
    .locals 2
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    iput-object p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mFragments:Ljava/util/List;

    .line 163
    new-instance v0, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/tuner/base/TabFragmentViewPager$3;-><init>(Lcom/oneplus/tuner/base/TabFragmentViewPager;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 253
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 255
    :cond_0
    return-void
.end method

.method public addFragments(Ljava/util/List;Ljava/util/List;Landroid/app/FragmentManager;)V
    .locals 0
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .local p2, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 153
    invoke-direct {p0, p2}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->addTabs(Ljava/util/List;)V

    .line 154
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->addFragments(Ljava/util/List;Landroid/app/FragmentManager;)V

    .line 156
    :cond_0
    return-void
.end method

.method public getCurrentFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public getViewPagerId()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v0

    return v0
.end method

.method public makeFragmentTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCurrent(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->setCurrentTab(I)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 260
    return-void
.end method

.method public setCurrent(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->setCurrentTab(I)V

    .line 264
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 266
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "onPageChangeListener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 275
    return-void
.end method

.method public showTabTitle(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager;->mTabLayout:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->setVisibility(I)V

    goto :goto_0
.end method
