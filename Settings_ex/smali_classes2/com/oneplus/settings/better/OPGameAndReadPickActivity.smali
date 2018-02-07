.class public Lcom/oneplus/settings/better/OPGameAndReadPickActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGameAndReadPickActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;
    }
.end annotation


# instance fields
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

.field private mAppType:I

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;-><init>(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 80
    const v0, 0x7f110208

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    .line 81
    new-instance v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    const v0, 0x7f11018a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mLoadingContainer:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v1, 0x7f0400e2

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "op_load_app_tyep"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 67
    iget v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    .line 68
    const v1, 0x7f0e039f

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    :goto_0
    const-string/jumbo v1, "appops"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    new-instance v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 75
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    .line 76
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->initView()V

    .line 59
    return-void

    .line 69
    :cond_1
    iget v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_0

    .line 70
    const v1, 0x7f0e03a1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 94
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 96
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-virtual {v2, p3}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->getSelected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 97
    .local v0, "isSelected":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mOPGameAndReadPickAdapter:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-virtual {v2, p3, v0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->setSelected(IZ)V

    .line 98
    iget-object v3, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->mAppType:I

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v5

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v6

    .line 99
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 98
    :goto_1
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 92
    return-void

    .line 96
    .end local v0    # "isSelected":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isSelected":Z
    goto :goto_0

    .line 100
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
