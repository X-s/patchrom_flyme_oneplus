.class public Lcom/oneplus/settings/ui/OPScreenColorModePreference;
.super Landroid/support/v7/preference/Preference;
.source "OPScreenColorModePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final layoutResId:I = 0x7f040110


# instance fields
.field private currIndex:I

.field private mContext:Landroid/content/Context;

.field private mPage0:Landroid/widget/ImageView;

.field private mPage1:Landroid/widget/ImageView;

.field private mPage2:Landroid/widget/ImageView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPage0:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->initView(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->initView(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const v0, 0x7f040110

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->setLayoutResource(I)V

    .line 54
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v8, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 62
    const v6, 0x7f110245

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 63
    iget-object v6, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;

    invoke-direct {v7, p0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 65
    const v6, 0x7f110247

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPage0:Landroid/widget/ImageView;

    .line 66
    const v6, 0x7f110248

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPage1:Landroid/widget/ImageView;

    .line 67
    const v6, 0x7f110249

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mPage2:Landroid/widget/ImageView;

    .line 69
    iget-object v6, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    .local v0, "mLi":Landroid/view/LayoutInflater;
    const v6, 0x7f040112

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, "view1":Landroid/view/View;
    const v6, 0x7f040114

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, "view2":Landroid/view/View;
    const v6, 0x7f040113

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, "view3":Landroid/view/View;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v5, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/oneplus/settings/ui/OPScreenColorModePreference$1;

    invoke-direct {v1, p0, v5}, Lcom/oneplus/settings/ui/OPScreenColorModePreference$1;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModePreference;Ljava/util/ArrayList;)V

    .line 103
    .local v1, "mPagerAdapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v6, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    iget-object v6, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v7, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->currIndex:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 59
    return-void
.end method
