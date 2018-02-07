.class public Lcom/oneplus/settings/gestures/OPGestureAppListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGestureAppListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_GESTURE_COUNT:I = 0x6

.field public static final SHORTCUT_REQUESET_CODE:I = 0x1

.field private static final TIME_DELAY:I = 0x64


# instance fields
.field private mDefaultGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAppListView:Landroid/widget/ListView;

.field private mGestureKey:Ljava/lang/String;

.field private mGesturePackageName:Ljava/lang/String;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureTitle:Ljava/lang/String;

.field private mGestureValueIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/gestures/OPGestureAppAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getSelectionPosition()I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;-><init>(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private createDefaultAppList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v1, ""

    const v2, 0x7f0e037d

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 94
    .local v0, "noneAction":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v5, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v6, ""

    const v1, 0x7f0e037e

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 95
    .local v5, "openCamera":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v6, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v7, ""

    const v1, 0x7f0e037f

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    move v10, v4

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 96
    .local v6, "openFrontCamera":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v7, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v8, ""

    const v1, 0x7f0e0380

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    move v11, v4

    move v12, v4

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 97
    .local v7, "takeVideo":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v8, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v9, ""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0381

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ""

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 98
    .local v8, "openFlashlight":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v9, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v10, ""

    const v1, 0x7f0e021e

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ""

    move v13, v4

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 99
    .local v9, "openShelf":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    return-object v1
.end method

.method private doNothing()V
    .locals 3

    .prologue
    .line 193
    iget v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    return-void
.end method

.method private getSelectionPosition()I
    .locals 4

    .prologue
    .line 71
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 75
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 76
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    move v1, v0

    .line 88
    :cond_0
    :goto_1
    return v1

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    move v1, v0

    .line 83
    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private gotoShortCutsPickPage(Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 3
    .param p1, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ONEPLUS_GESTURE_SHORTCUT_LIST_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "op_gesture_key"

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v1, "op_gesture_package"

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v1, "op_gesture_package_app"

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 221
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    .line 138
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 125
    const v0, 0x7f110212

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 129
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 130
    const v0, 0x7f11018a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mLoadingContainer:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 132
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->createDefaultAppList()Ljava/util/List;

    .line 133
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->initData()V

    .line 124
    return-void
.end method

.method private openApps(Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 4
    .param p1, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    return-void
.end method

.method private openBackCamera()V
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string/jumbo v2, "OpenCamera"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    return-void
.end method

.method private openFlashLight()V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string/jumbo v2, "OpenTorch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    return-void
.end method

.method private openFrontCamera()V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string/jumbo v2, "FrontCamera"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    return-void
.end method

.method private openShelf()V
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string/jumbo v2, "OpenShelf"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    return-void
.end method

.method private openTakeVideo()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string/jumbo v2, "TakeVideo"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    return-void
.end method

.method private refreshList()V
    .locals 6

    .prologue
    .line 184
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "shortCutId":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsGesture(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 189
    iget-object v5, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    invoke-static {p0, v5, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->setSelectedItem(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 183
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    .local v0, "hasShortCut":Z
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/settings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->finish()V

    .line 249
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v2, 0x7f0400e5

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "op_gesture_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    .line 113
    const-string/jumbo v2, "op_gesture_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureTitle:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getIndexByGestureValueKey(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    .line 115
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 118
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 121
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->initView()V

    .line 108
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    .line 243
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 146
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "hasShortCut":Z
    packed-switch p3, :pswitch_data_0

    .line 168
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 169
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCuts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-direct {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->gotoShortCutsPickPage(Lcom/oneplus/settings/better/OPAppModel;)V

    .line 171
    const/4 v0, 0x1

    .line 177
    .end local v1    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->refreshList()V

    .line 178
    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->finish()V

    .line 144
    :cond_0
    return-void

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->doNothing()V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openBackCamera()V

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openFrontCamera()V

    goto :goto_0

    .line 159
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openTakeVideo()V

    goto :goto_0

    .line 162
    :pswitch_4
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openFlashLight()V

    goto :goto_0

    .line 165
    :pswitch_5
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openShelf()V

    goto :goto_0

    .line 173
    .restart local v1    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :cond_1
    invoke-direct {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openApps(Lcom/oneplus/settings/better/OPAppModel;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    .line 237
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    .line 233
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->refreshList()V

    .line 230
    return-void
.end method
