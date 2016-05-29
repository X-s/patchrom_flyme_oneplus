.class public Lcom/android/settings_ex/ui/OPScreenBetterPreference;
.super Landroid/preference/Preference;
.source "OPScreenBetterPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final layoutResId:I = 0x7f040075


# instance fields
.field private currIndex:I

.field private mContext:Landroid/content/Context;

.field private mPage0:Landroid/widget/ImageView;

.field private mPage1:Landroid/widget/ImageView;

.field private mPage2:Landroid/widget/ImageView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->currIndex:I

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->initView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->currIndex:I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->currIndex:I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->initView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage0:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/ui/OPScreenBetterPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPScreenBetterPreference;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->currIndex:I

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->setLayoutResource(I)V

    .line 52
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v6, 0x7f0f012c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 61
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;-><init>(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 63
    const v6, 0x7f0f012e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage0:Landroid/widget/ImageView;

    .line 64
    const v6, 0x7f0f012f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage1:Landroid/widget/ImageView;

    .line 65
    const v6, 0x7f0f0130

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage2:Landroid/widget/ImageView;

    .line 67
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    .local v0, "mLi":Landroid/view/LayoutInflater;
    const v6, 0x7f040076

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "view1":Landroid/view/View;
    const v6, 0x7f040078

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 70
    .local v3, "view2":Landroid/view/View;
    const v6, 0x7f040077

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 72
    .local v4, "view3":Landroid/view/View;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v5, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;

    invoke-direct {v1, p0, v5}, Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;-><init>(Lcom/android/settings_ex/ui/OPScreenBetterPreference;Ljava/util/ArrayList;)V

    .line 101
    .local v1, "mPagerAdapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v7, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->currIndex:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 106
    return-void
.end method
