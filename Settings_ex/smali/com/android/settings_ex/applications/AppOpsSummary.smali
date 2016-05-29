.class public Lcom/android/settings_ex/applications/AppOpsSummary;
.super Landroid/app/Fragment;
.source "AppOpsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppOpsSummary$MyPagerAdapter;
    }
.end annotation


# static fields
.field static sPageTemplates:[Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;


# instance fields
.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurPos:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mPageNames:[Ljava/lang/CharSequence;

.field private mRootView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsSummary;->sPageTemplates:[Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mContentContainer:Landroid/view/ViewGroup;

    .line 98
    iput-object v1, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mRootView:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mPageNames:[Ljava/lang/CharSequence;

    .line 102
    const v3, 0x7f0f0017

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 103
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/applications/AppOpsSummary$MyPagerAdapter;-><init>(Lcom/android/settings_ex/applications/AppOpsSummary;Landroid/app/FragmentManager;)V

    .line 104
    .local v0, "adapter":Lcom/android/settings_ex/applications/AppOpsSummary$MyPagerAdapter;
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    const v3, 0x7f0f0018

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/PagerTabStrip;

    .line 107
    .local v2, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 111
    instance-of v3, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 115
    :cond_0
    return-object v1
.end method
