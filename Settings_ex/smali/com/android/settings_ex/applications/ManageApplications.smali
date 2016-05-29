.class public Lcom/android/settings_ex/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings_ex/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field private static final APP_INSTALL_AUTO:I = 0x0

.field private static final APP_INSTALL_AUTO_ID:Ljava/lang/String; = "auto"

.field private static final APP_INSTALL_DEVICE:I = 0x1

.field private static final APP_INSTALL_DEVICE_ID:Ljava/lang/String; = "device"

.field public static final APP_INSTALL_LOCATION:I = 0x9

.field private static final APP_INSTALL_SDCARD:I = 0x2

.field private static final APP_INSTALL_SDCARD_ID:Ljava/lang/String; = "sdcard"

.field static final DEBUG:Z = false

.field private static final EXTRA_DEFAULT_LIST_TYPE:Ljava/lang/String; = "defaultListType"

.field private static final EXTRA_LIST_TYPE:Ljava/lang/String; = "currentListType"

.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"

.field private static final EXTRA_SHOW_BACKGROUND:Ljava/lang/String; = "showBackground"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_DISABLED:I = 0x3

.field public static final FILTER_APPS_SDCARD:I = 0x2

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field static final LIST_TYPE_ALL:I = 0x3

.field static final LIST_TYPE_DISABLED:I = 0x4

.field static final LIST_TYPE_DOWNLOADED:I = 0x0

.field private static final LIST_TYPE_MISSING:I = -0x1

.field static final LIST_TYPE_RUNNING:I = 0x1

.field static final LIST_TYPE_SDCARD:I = 0x2

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field public static final RESET_APP_PREFERENCES:I = 0x8

.field public static final SHOW_BACKGROUND_PROCESSES:I = 0x7

.field public static final SHOW_RUNNING_SERVICES:I = 0x6

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "ManageApplications"


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

.field private mBarToDefaultAppSettings:Landroid/widget/ImageView;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPinnedHeader:Landroid/view/ViewGroup;

.field private mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mTabText1:Landroid/widget/TextView;

.field private mTabText2:Landroid/widget/TextView;

.field private mTabText3:Landroid/widget/TextView;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 198
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    .line 1780
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$6;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateNumTabs()V

    return-void
.end method

.method private locateIndex(I)I
    .locals 2
    .param p1, "appInstallID"    # I

    .prologue
    .line 1675
    const/4 v0, 0x2

    .line 1676
    .local v0, "selectedLocation":I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1677
    const/4 v0, 0x0

    .line 1683
    :cond_0
    :goto_0
    return v0

    .line 1678
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1679
    const/4 v0, 0x1

    goto :goto_0

    .line 1680
    :cond_2
    if-nez p1, :cond_0

    .line 1681
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private resetTopBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 1105
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1106
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1109
    return-void
.end method

.method private showAppInstallLocationSettingDlg()V
    .locals 6

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_install_location"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1690
    .local v0, "appInstallID":I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications;->locateIndex(I)I

    move-result v2

    .line 1695
    .local v2, "selectedLocation":I
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1697
    .local v1, "items":[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09064b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/applications/ManageApplications$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/ManageApplications$5;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    invoke-virtual {v3, v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1739
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1420
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1421
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 1424
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0905f2

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1427
    return-void
.end method

.method private updateNumTabs()V
    .locals 2

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1399
    .local v0, "newNum":I
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    if-eq v0, v1, :cond_0

    .line 1400
    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    .line 1401
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1402
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1405
    :cond_0
    return-void

    .line 1397
    .end local v0    # "newNum":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1539
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1540
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1541
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090616

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1542
    const v1, 0x7f090617

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1543
    const v1, 0x7f090618

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1545
    const v1, 0x7f09021b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1546
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1547
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1549
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1367
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1370
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1561
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1562
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1564
    .local v4, "mIPm":Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1567
    .local v3, "nm":Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1569
    .local v6, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1571
    .local v5, "aom":Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1572
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/applications/ManageApplications$4;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1638
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "nm":Landroid/app/INotificationManager;
    .end local v4    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v5    # "aom":Landroid/app/AppOpsManager;
    .end local v6    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1804
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 989
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 999
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    .line 1002
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_ex/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1005
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 1006
    .local v7, "action":Ljava/lang/String;
    const/4 v10, 0x1

    .line 1007
    .local v10, "defaultListType":I
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1009
    .local v8, "className":Ljava/lang/String;
    :goto_0
    if-nez v8, :cond_0

    .line 1010
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 1012
    :cond_0
    const-class v1, Lcom/android/settings_ex/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1014
    :cond_1
    const/4 v10, 0x1

    .line 1026
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 1027
    const-string v1, "sortOrder"

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 1029
    const-string v1, "defaultListType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1030
    .local v12, "tmp":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_3

    .line 1031
    move v10, v12

    .line 1032
    :cond_3
    const-string v1, "showBackground"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 1036
    .end local v12    # "tmp":I
    :cond_4
    iput v10, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    .line 1038
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 1040
    .local v9, "containerIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09063b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 1044
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09063a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 1046
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09061c

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1054
    .local v0, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1062
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090620

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1065
    .restart local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_5
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09061f

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1071
    .restart local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09061e

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1080
    .restart local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09061d

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1085
    .restart local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    .line 1089
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 1091
    .local v13, "um":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {v13, v1}, Lcom/android/settings_ex/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ex/UserSpinnerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    .line 1092
    return-void

    .line 1007
    .end local v0    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "containerIntent":Landroid/content/Intent;
    .end local v13    # "um":Landroid/os/UserManager;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1015
    .restart local v8    # "className":Ljava/lang/String;
    :cond_7
    const-class v1, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".StorageUse"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1018
    :cond_8
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 1019
    const/4 v10, 0x3

    goto/16 :goto_1

    .line 1020
    :cond_9
    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1023
    const/4 v10, 0x3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1431
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1438
    const v0, 0x7f090611

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1441
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f090612

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1444
    const/4 v0, 0x6

    const v1, 0x7f090613

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1446
    const/4 v0, 0x7

    const v1, 0x7f090614

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1449
    const/16 v0, 0x8

    const v1, 0x7f090615

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 1461
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 1117
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040052

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1119
    .local v4, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 1120
    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 1121
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v7, 0x7f0f00d7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    .line 1127
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    if-eqz v6, :cond_0

    .line 1129
    const v6, 0x7f0400d6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    .line 1130
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings_ex/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1131
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1132
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_0

    .line 1134
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1135
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    :cond_0
    :goto_0
    const v6, 0x7f0f0017

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1147
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    .line 1148
    .local v0, "adapter":Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1149
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1154
    const v6, 0x7f0f00dc

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    .line 1155
    const v6, 0x7f0f00dd

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    .line 1156
    const v6, 0x7f0f00de

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    .line 1159
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    const v7, -0x48000001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1160
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1162
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    const v7, 0x72ffffff

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1163
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1165
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    const v7, 0x72ffffff

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1166
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1171
    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 1174
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    const v7, -0x48000001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1175
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1177
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    const v7, 0x72ffffff

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1178
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1180
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    const v7, 0x72ffffff

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1181
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1197
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings_ex/applications/ManageApplications$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/applications/ManageApplications$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings_ex/applications/ManageApplications$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/applications/ManageApplications$2;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings_ex/applications/ManageApplications$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/applications/ManageApplications$3;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1281
    instance-of v6, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v6, :cond_1

    .line 1282
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 1285
    :cond_1
    if-eqz p3, :cond_2

    const-string v6, "resetDialog"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1287
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->buildResetDialog()V

    .line 1290
    :cond_2
    if-nez p3, :cond_3

    .line 1292
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "currentListType"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1294
    .local v2, "extraCurrentListType":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_5

    move v1, v2

    .line 1296
    .local v1, "currentListType":I
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNumTabs:I

    if-ge v3, v6, :cond_3

    .line 1297
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1298
    .local v5, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget v6, v5, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v6, v1, :cond_6

    .line 1299
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1305
    .end local v1    # "currentListType":I
    .end local v2    # "extraCurrentListType":I
    .end local v3    # "i":I
    .end local v5    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_3
    return-object v4

    .line 1186
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    const v7, 0x72ffffff

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1187
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText2:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1189
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    const v7, -0x48000001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1190
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText1:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1192
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    const v7, 0x72ffffff

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1193
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 1294
    .restart local v2    # "extraCurrentListType":I
    :cond_5
    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    goto :goto_2

    .line 1296
    .restart local v1    # "currentListType":I
    .restart local v3    # "i":I
    .restart local v5    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1136
    .end local v0    # "adapter":Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;
    .end local v1    # "currentListType":I
    .end local v2    # "extraCurrentListType":I
    .end local v3    # "i":I
    .end local v5    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1484
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1485
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1486
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1480
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1355
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->detachView()V

    .line 1361
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->release()V

    .line 1359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1556
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "tab"    # Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1743
    .local p2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1745
    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1747
    .local v0, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1748
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1750
    .end local v0    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 1375
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings_ex/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1377
    .local v2, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1378
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1379
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1380
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1381
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1382
    .local v0, "currentTab":I
    const-string v4, "currentListType"

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1383
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1387
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1389
    .end local v0    # "currentTab":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1394
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1643
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1644
    .local v0, "menuId":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1645
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 1646
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1647
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1667
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1669
    :cond_2
    return v1

    .line 1649
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1650
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 1651
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1652
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1654
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1655
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 1656
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1657
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1659
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    .line 1660
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0

    .line 1661
    :cond_6
    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 1662
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->showAppInstallLocationSettingDlg()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1337
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    .line 1339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1340
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    .line 1339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1342
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 1475
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1315
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    .line 1317
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications;->updateCurrentTab(I)V

    .line 1318
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateNumTabs()V

    .line 1319
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 1320
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1324
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1325
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1326
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1327
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1330
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1331
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1333
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1310
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1311
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1346
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1347
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1351
    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1409
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1410
    .local v1, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1414
    .end local v1    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1408
    .restart local v1    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1414
    .end local v1    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1753
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1754
    .local v3, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1757
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1758
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1759
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1763
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1764
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1765
    .local v2, "t":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1766
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    .line 1763
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1761
    .end local v1    # "i":I
    .end local v2    # "t":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1770
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1771
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 1772
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1773
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1774
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1776
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1503
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1511
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_3

    .line 1512
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/ManageApplications;->tabForType(I)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1513
    .local v1, "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_1

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1516
    .local v0, "showingBackground":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1517
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1518
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1520
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1522
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1523
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    goto :goto_0

    .end local v0    # "showingBackground":Z
    :cond_1
    move v0, v2

    .line 1513
    goto :goto_1

    .restart local v0    # "showingBackground":Z
    :cond_2
    move v3, v2

    .line 1520
    goto :goto_2

    .line 1525
    .end local v0    # "showingBackground":Z
    .end local v1    # "tab":Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_4

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1527
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_5

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1529
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1530
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1531
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 1525
    goto :goto_3

    :cond_5
    move v4, v2

    .line 1527
    goto :goto_4
.end method
