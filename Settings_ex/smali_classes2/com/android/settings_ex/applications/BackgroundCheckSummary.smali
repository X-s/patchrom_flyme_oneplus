.class public Lcom/android/settings_ex/applications/BackgroundCheckSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "BackgroundCheckSummary.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x102

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 48
    iput-object p1, p0, Lcom/android/settings_ex/applications/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iget-object v2, p0, Lcom/android/settings_ex/applications/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002e

    .line 51
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/BackgroundCheckSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 60
    .local v0, "ft":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/android/settings_ex/applications/AppOpsCategory;

    sget-object v3, Lcom/android/settings_ex/applications/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    invoke-direct {v2, v3, v5}, Lcom/android/settings_ex/applications/AppOpsCategory;-><init>(Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;Z)V

    .line 61
    const-string/jumbo v3, "appops"

    .line 60
    const v4, 0x7f1100b1

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 62
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 64
    return-object v1
.end method
