.class public Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGestureShortCutListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "OPGestureShortCutListSettings"


# instance fields
.field private mAPPOPGestureAppModel:Lcom/oneplus/settings/gestures/OPGestureAppModel;

.field private mAppDrawable:Landroid/graphics/drawable/Drawable;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureKey:Ljava/lang/String;

.field private mGesturePackage:Ljava/lang/String;

.field private mGestureShortcutListView:Landroid/widget/ListView;

.field private mGestureSummary:Ljava/lang/String;

.field private mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShortcutInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    .line 31
    return-void
.end method

.method private initData()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 73
    const-string/jumbo v10, "launcherapps"

    invoke-virtual {p0, v10}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    .line 74
    .local v5, "mLauncherApps":Landroid/content/pm/LauncherApps;
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    .line 75
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    if-nez v10, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 79
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    iget-object v11, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    const-string/jumbo v12, ""

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/oneplus/settings/gestures/OPGestureAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    .local v0, "appModel":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mAppDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 83
    .local v9, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_3

    .line 84
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 85
    .local v7, "s":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v4

    .line 86
    .local v4, "label":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 87
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v4

    .line 89
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 90
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 92
    :cond_2
    new-instance v6, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v10, v11, v12, v13}, Lcom/oneplus/settings/gestures/OPGestureAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    .local v6, "model":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    :try_start_0
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 95
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 96
    .local v8, "shortCutIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v8}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "context":Landroid/content/Context;
    .end local v8    # "shortCutIcon":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v10, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v6    # "model":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    .end local v7    # "s":Landroid/content/pm/ShortcutInfo;
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f110212

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method

.method private openApps(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V
    .locals 4
    .param p1, "model"    # Lcom/oneplus/settings/gestures/OPGestureAppModel;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    return-void
.end method

.method private openShortCuts(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V
    .locals 4
    .param p1, "model"    # Lcom/oneplus/settings/gestures/OPGestureAppModel;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenShortcut:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    return-void
.end method

.method private refreshList()V
    .locals 4

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->initData()V

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    .line 113
    new-instance v1, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-direct {v1, p0, v2, v0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v3, 0x7f0400e5

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 51
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "op_gesture_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    .line 52
    const-string/jumbo v3, "op_gesture_package"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    .line 53
    const-string/jumbo v3, "op_gesture_package_app"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mAppDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->initView()V

    .line 47
    return-void

    .line 62
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    .line 131
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
    .line 140
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    .line 141
    .local v0, "model":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    packed-switch p3, :pswitch_data_0

    .line 146
    invoke-direct {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->openShortCuts(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {p0, v1, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->setSelectedSummary(Ljava/lang/String;)V

    .line 152
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->finish()V

    .line 138
    return-void

    .line 143
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->openApps(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->refreshList()V

    .line 118
    return-void
.end method
