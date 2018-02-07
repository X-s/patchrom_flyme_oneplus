.class public Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$1;,
        Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;,
        Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;,
        Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field protected static final DEBUG_TIMING:Z = false

.field public static final EXTRA_SHOW_MENU:Ljava/lang/String; = "show_drawer_menu"

.field private static final REFRESH_DRAWER_UI:I = 0x1

.field private static final REFRESH_UI:I = 0x0

.field private static final REFRESH_UI_DELAY:I = 0x64

.field private static final STATUS_BAR_OVERLAY_COLOR:I

.field private static final STATUS_BAR_OVERLAY_TRANSLUCENT_COLOR:I

.field private static final TAG:Ljava/lang/String; = "SettingsDrawerActivity"

.field private static sConfigTracker:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

.field private static sDashboardCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeaderContainer:Landroid/widget/FrameLayout;

.field private mDrawerAdapter:Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageReceiver:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;

.field private mShowingMenu:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/settings_exlib/applications/InterestingConfigChanges;
    .locals 1

    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    return-object v0
.end method

.method static synthetic -get3()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->delayInitDrawer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "SettingsDrawerActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->DEBUG:Z

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    .line 111
    const-string/jumbo v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->STATUS_BAR_OVERLAY_COLOR:I

    .line 112
    const-string/jumbo v0, "#15000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->STATUS_BAR_OVERLAY_TRANSLUCENT_COLOR:I

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$1;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V

    iput-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private delayInitDrawer()V
    .locals 2

    .prologue
    .line 164
    sget v1, Lcom/android/settings_exlib/R$id;->left_drawer:I

    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 179
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    new-instance v1, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$2;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    return-void
.end method

.method private isTopLevelTile(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 233
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 234
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_0

    .line 235
    return v9

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 239
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "category$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .line 240
    .local v1, "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    iget-object v6, v1, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tile$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/drawer/Tile;

    .line 241
    .local v4, "tile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v6, v4, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 241
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    sget-boolean v6, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 244
    const-string/jumbo v6, "SettingsDrawerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "intent is for top level tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3
    const/4 v6, 0x1

    return v6

    .line 250
    .end local v1    # "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    .end local v4    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    .end local v5    # "tile$iterator":Ljava/util/Iterator;
    :cond_4
    sget-boolean v6, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 251
    const-string/jumbo v6, "SettingsDrawerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Intent is not for top level settings "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_5
    return v9
.end method

.method private updateUserHandlesIfNeeded(Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 5
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 437
    iget-object v1, p1, Lcom/android/settings_exlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 439
    .local v1, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 440
    iget-object v3, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mUserManager:Landroid/os/UserManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 441
    sget-boolean v2, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 442
    const-string/jumbo v3, "SettingsDrawerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delete the user: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 439
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 436
    :cond_2
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public closeDrawer()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 282
    :cond_0
    return-void
.end method

.method public getDashboardCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    .line 383
    new-instance v0, Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/InterestingConfigChanges;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    .line 385
    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 386
    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/android/settings_exlib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    .line 388
    :cond_0
    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object v0
.end method

.method public getEarlyDashboardCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object v0
.end method

.method public getTileCache()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    .line 459
    :cond_0
    sget-object v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onCategoriesChanged()V
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->updateDrawer()V

    .line 393
    iget-object v2, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 394
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 395
    iget-object v2, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0x26

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    .local v0, "startTime":J
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 125
    .local v2, "theme":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mWindow:Landroid/view/Window;

    .line 126
    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mWindow:Landroid/view/Window;

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 130
    iget-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mWindow:Landroid/view/Window;

    sget v5, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->STATUS_BAR_OVERLAY_TRANSLUCENT_COLOR:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 131
    invoke-virtual {p0, v6}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->requestWindowFeature(I)Z

    .line 134
    :cond_0
    sget v4, Lcom/android/settings_exlib/R$layout;->settings_with_drawer:I

    invoke-super {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 135
    sget v4, Lcom/android/settings_exlib/R$id;->content_header_container:I

    invoke-virtual {p0, v4}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    .line 136
    sget v4, Lcom/android/settings_exlib/R$id;->drawer_layout:I

    invoke-virtual {p0, v4}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout;

    iput-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 137
    iget-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v4, :cond_1

    .line 138
    return-void

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4, p0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 142
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 144
    sget v4, Lcom/android/settings_exlib/R$id;->action_bar:I

    invoke-virtual {p0, v4}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    .line 145
    .local v3, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 147
    iget-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v4, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 148
    iput-object v9, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 149
    return-void

    .line 151
    :cond_2
    sget v4, Lcom/android/settings_exlib/R$style;->Settings_TextAppearance_Material_Widget_ActionBar_Title:I

    invoke-virtual {v3, p0, v4}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 153
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mUserManager:Landroid/os/UserManager;

    .line 154
    new-instance v4, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    invoke-direct {v4, p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V

    iput-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    .line 155
    iget-object v4, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 342
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mShowingMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->openDrawer()V

    .line 194
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    return-void
.end method

.method public onProfileTileOpen()V
    .locals 0

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->finish()V

    .line 462
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    sget-object v1, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    if-nez v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "show_drawer_menu"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->showMenuIcon()V

    .line 200
    :cond_1
    return-void

    .line 214
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v1, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    invoke-direct {v1, p0, v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onTileClicked(Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settings_exlib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->finish()V

    .line 449
    :cond_0
    return-void
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 276
    :cond_0
    return-void
.end method

.method public openTile(Lcom/android/settings_exlib/drawer/Tile;)Z
    .locals 9
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    const/4 v8, 0x0

    const v7, 0x8000

    const/4 v6, 0x1

    .line 401
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$3;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V

    .line 406
    const-wide/16 v4, 0x12c

    .line 401
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->startActivity(Landroid/content/Intent;)V

    .line 411
    return v6

    .line 414
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->updateUserHandlesIfNeeded(Lcom/android/settings_exlib/drawer/Tile;)V

    .line 415
    iget-object v2, p1, Lcom/android/settings_exlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 416
    .local v1, "numUserHandles":I
    if-le v1, v6, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settings_exlib/drawer/Tile;)V

    .line 418
    return v8

    .line 419
    :cond_1
    if-ne v1, v6, :cond_2

    .line 421
    iget-object v2, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "show_drawer_menu"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    iget-object v2, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    iget-object v3, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/settings_exlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 433
    .end local v1    # "numUserHandles":I
    :goto_0
    return v6

    .line 426
    .restart local v1    # "numUserHandles":I
    :cond_2
    iget-object v2, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "show_drawer_menu"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    iget-object v2, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    iget-object v2, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v1    # "numUserHandles":I
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "SettingsDrawerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find tile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public remCategoryListener(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method public setContentHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 294
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 303
    sget v1, Lcom/android/settings_exlib/R$id;->content_frame:I

    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 307
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 302
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 312
    sget v0, Lcom/android/settings_exlib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 317
    sget v0, Lcom/android/settings_exlib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 289
    return-void
.end method

.method public setIsDrawerPresent(Z)V
    .locals 3
    .param p1, "isPresent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 265
    if-eqz p1, :cond_1

    .line 266
    sget v0, Lcom/android/settings_exlib/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->updateDrawer()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 271
    iput-object v2, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 468
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 469
    .local v2, "state":I
    if-ne v2, v4, :cond_2

    move v0, v4

    .line 470
    .local v0, "isEnabled":Z
    :goto_0
    if-ne v0, p2, :cond_0

    if-nez v2, :cond_1

    .line 471
    :cond_0
    if-eqz p2, :cond_3

    .line 472
    sget-object v3, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 476
    :goto_1
    if-eqz p2, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v1, p1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 480
    new-instance v3, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 466
    :cond_1
    return-void

    .end local v0    # "isEnabled":Z
    :cond_2
    move v0, v5

    .line 469
    goto :goto_0

    .line 474
    .restart local v0    # "isEnabled":Z
    :cond_3
    sget-object v3, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 478
    :cond_4
    const/4 v3, 0x2

    goto :goto_2
.end method

.method public showMenuIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 366
    iput-boolean v2, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mShowingMenu:Z

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/settings_exlib/R$drawable;->ic_menu:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/android/settings_exlib/R$string;->content_description_menu_button:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 365
    :cond_0
    return-void
.end method

.method public updateDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    if-nez v0, :cond_1

    .line 322
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->updateCategories()V

    .line 326
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerAdapter:Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 320
    :goto_0
    return-void

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method
