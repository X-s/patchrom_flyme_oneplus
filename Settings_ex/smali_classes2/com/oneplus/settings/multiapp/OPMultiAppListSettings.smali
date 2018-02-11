.class public Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;,
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;,
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;,
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;,
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
    }
.end annotation


# static fields
.field public static final FLAG_FROM:I = 0x4000000

.field public static final INSTALL_MULTI_APP:I = 0x58

.field public static final PROFILE_NAME:Ljava/lang/String; = "Multi-App"

.field public static final TAG:Ljava/lang/String; = "OPMultiAppListSettings"

.field private static final TEST_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final TEST_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings_ex"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListView:Landroid/widget/ListView;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mCreateManagedProfileTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLoad:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasTargetUser:Z

.field private mInitPosition:I

.field private mInstallMultiApphandler:Landroid/os/Handler;

.field private mIpm:Landroid/content/pm/IPackageManager;

.field private mIsWarnDialogShowing:Z

.field private mLoadingContainer:Landroid/view/View;

.field private mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

.field private mLoadingMessageView:Landroid/widget/TextView;

.field private mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

.field private mNeedReloadData:Z

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

.field private final mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRefreshUIHandler:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mRefreshUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInitPosition:I

    return v0
.end method

.method static synthetic -get5(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/lib/util/loading/LoadingHelper;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->initFailed()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->installMultiApp(Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->refreshList(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->removeMultiAppByPosition(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->setUpUserOrProfile()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "com.oneplus.settings.multiapp/com.oneplus.settings.multiapp.OPBasicDeviceAdminReceiver"

    .line 95
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 94
    sput-object v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->TEST_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    .line 85
    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHasTargetUser:Z

    .line 86
    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    .line 89
    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    .line 98
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mRefreshUIHandler:Landroid/os/Handler;

    .line 620
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method private enableProfile()V
    .locals 6

    .prologue
    .line 543
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    .line 544
    .local v2, "userId":I
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v5, "Multi-App"

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 545
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 546
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 547
    .local v1, "parent":Landroid/content/pm/UserInfo;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.USER"

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 549
    const/high16 v3, 0x50000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 536
    return-void
.end method

.method private getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 496
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    .line 499
    .local v0, "myUser":I
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 500
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 504
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 508
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_0

    .line 509
    return-object v2

    .line 512
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    return-object v6
.end method

.method private getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 254
    .local v0, "model":Lcom/oneplus/settings/better/OPAppModel;
    return-object v0
.end method

.method private initFailed()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    .line 396
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 200
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 201
    const v0, 0x7f1101d8

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    .line 202
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    const v2, 0x7f020207

    .line 203
    const v3, 0x7f020205

    const v4, 0x7f0f0146

    .line 202
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->setListDivider(Landroid/content/Context;Landroid/widget/ListView;III)V

    .line 204
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    const v0, 0x7f11018a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    const v1, 0x7f11018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingMessageView:Landroid/widget/TextView;

    .line 209
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 229
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->startLoadData()V

    .line 199
    return-void
.end method

.method private installMdmOnManagedProfile()V
    .locals 5

    .prologue
    .line 555
    const-string/jumbo v2, "OPMultiAppListSettings"

    const-string/jumbo v3, "Installing mobile device management app on managed profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIpm:Landroid/content/pm/IPackageManager;

    .line 559
    const-string/jumbo v3, "com.android.settings_ex"

    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 558
    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 560
    .local v1, "status":I
    sparse-switch v1, :sswitch_data_0

    .line 572
    :goto_0
    const-string/jumbo v2, "OPMultiAppListSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not install mobile device management app on managed profile. Unknown status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v1    # "status":I
    :goto_1
    return-void

    .line 562
    .restart local v1    # "status":I
    :sswitch_0
    return-void

    .line 565
    :sswitch_1
    const-string/jumbo v2, "OPMultiAppListSettings"

    const-string/jumbo v3, "Could not install mobile device management app on managed profile because the user is restricted"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :sswitch_2
    const-string/jumbo v2, "OPMultiAppListSettings"

    const-string/jumbo v3, "Could not install mobile device management app on managed profile because the package could not be found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .local v0, "neverThrown":Landroid/os/RemoteException;
    goto :goto_1

    .line 560
    :sswitch_data_0
    .sparse-switch
        -0x6f -> :sswitch_1
        -0x3 -> :sswitch_2
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method private installMultiApp(Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    .line 332
    const-string/jumbo v2, "OPMultiAppListSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installMultiApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez v2, :cond_0

    .line 334
    return-void

    .line 337
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIpm:Landroid/content/pm/IPackageManager;

    .line 340
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 337
    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 341
    .local v1, "status":I
    sparse-switch v1, :sswitch_data_0

    .line 356
    :goto_0
    const-string/jumbo v2, "OPMultiAppListSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not install mobile device management app on managed profile. Unknown status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v1    # "status":I
    :goto_1
    return-void

    .line 343
    .restart local v1    # "status":I
    :sswitch_0
    const-string/jumbo v2, "OPMultiAppListSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installMultiApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x45

    .line 345
    const/4 v6, 0x0

    .line 344
    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 346
    return-void

    .line 349
    :sswitch_1
    const-string/jumbo v2, "OPMultiAppListSettings"

    const-string/jumbo v3, "Could not install mobile device management app on managed profile because the user is restricted"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :sswitch_2
    const-string/jumbo v2, "OPMultiAppListSettings"

    const-string/jumbo v3, "Could not install mobile device management app on managed profile because the package could not be found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 361
    .local v0, "neverThrown":Landroid/os/RemoteException;
    const-string/jumbo v2, "OPMultiAppListSettings"

    const-string/jumbo v3, "This should not happen."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 341
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f -> :sswitch_1
        -0x3 -> :sswitch_2
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method private refreshList(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->refreshList(ILcom/oneplus/settings/better/OPAppModel;)V

    .line 257
    return-void
.end method

.method private refreshList(ILcom/oneplus/settings/better/OPAppModel;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    .line 262
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-virtual {v2, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getSelected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 263
    .local v0, "isSelected":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 264
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 265
    .local v1, "msg":Landroid/os/Message;
    add-int/lit8 v2, p1, 0x58

    iput v2, v1, Landroid/os/Message;->what:I

    .line 266
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 267
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 262
    .end local v0    # "isSelected":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    .restart local v0    # "isSelected":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->showWarnigDialog(I)V

    goto :goto_1
.end method

.method private refreshListByMovePackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    if-nez v3, :cond_0

    .line 607
    return-void

    .line 609
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 611
    const/16 v4, 0x45

    .line 610
    invoke-virtual {v3, v4}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "model$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 613
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    .end local v1    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-virtual {v3, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setData(Ljava/util/List;)V

    .line 605
    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method private removeMultiApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string/jumbo v3, "OPMultiAppListSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeMultiApp ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez v3, :cond_0

    .line 369
    return-void

    .line 372
    :cond_0
    const-string/jumbo v3, "package"

    .line 371
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 374
    .local v1, "mIpm":Landroid/content/pm/IPackageManager;
    :try_start_0
    new-instance v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;)V

    .line 375
    .local v2, "observer":Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v2    # "observer":Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeMultiAppByPosition(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    .line 286
    .local v0, "model":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, 0x58

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->removeMultiApp(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setSelected(IZ)V

    .line 289
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x45

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 284
    return-void
.end method

.method private removeProfile()V
    .locals 2

    .prologue
    .line 389
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 390
    .local v0, "manager":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 387
    return-void
.end method

.method private setMdmAsActiveAdmin()V
    .locals 4

    .prologue
    .line 530
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 531
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->TEST_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 532
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 531
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 528
    return-void
.end method

.method private setMdmAsManagedProfileOwner()V
    .locals 4

    .prologue
    .line 518
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 520
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->TEST_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 521
    const-string/jumbo v2, "com.android.settings_ex"

    .line 522
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 519
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    const-string/jumbo v1, "OPMultiAppListSettings"

    const-string/jumbo v2, "Could not set profile owner."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    return-void
.end method

.method private setUpUserOrProfile()V
    .locals 3

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->enableProfile()V

    .line 595
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHasTargetUser:Z

    .line 596
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 598
    .local v0, "iActivityManager":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v1

    .local v1, "neverThrown":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setUserProvisioningState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .prologue
    .line 583
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 584
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string/jumbo v1, "OPMultiAppListSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting userProvisioningState for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setUserProvisioningState(II)V

    .line 581
    return-void
.end method

.method private showWarnigDialog(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    return-void

    .line 297
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    const v1, 0x7f0e03ed

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V

    .line 300
    const v2, 0x7f0e05c1

    .line 297
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    .line 309
    const v2, 0x7f0e05c0

    .line 297
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    .line 317
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 318
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 325
    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    .line 293
    :cond_2
    return-void
.end method

.method private startLoadData()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    .line 232
    return-void
.end method


# virtual methods
.method public getEnabledString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 5
    .param p1, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    .line 281
    const v1, 0x7f0e03e9

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "enabledString":Ljava/lang/String;
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f0400d3

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->setContentView(I)V

    .line 141
    iput-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    .line 142
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIpm:Landroid/content/pm/IPackageManager;

    .line 143
    const-string/jumbo v0, "account"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAccountManager:Landroid/accounts/AccountManager;

    .line 144
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    .line 146
    const-string/jumbo v0, "appops"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 148
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "install-multiapp-handler-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    .line 170
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->initView()V

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    .line 172
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->registerPackageReceiver()V

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 639
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    .line 640
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 641
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 638
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    .line 241
    iput p3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInitPosition:I

    .line 242
    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mCreateManagedProfileTask:Landroid/os/AsyncTask;

    .line 244
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/util/loading/LoadingHelper;->beginShowProgress()V

    .line 245
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mCreateManagedProfileTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Multi-App"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-direct {p0, p3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->refreshList(ILcom/oneplus/settings/better/OPAppModel;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    .line 178
    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    .line 176
    return-void

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->startLoadData()V

    .line 180
    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    goto :goto_0
.end method
