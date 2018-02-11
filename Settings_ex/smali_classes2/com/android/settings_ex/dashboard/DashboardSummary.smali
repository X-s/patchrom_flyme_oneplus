.class public Lcom/android/settings_ex/dashboard/DashboardSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;
.implements Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;
.implements Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/DashboardSummary$1;,
        Lcom/android/settings_ex/dashboard/DashboardSummary$2;,
        Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;,
        Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_CATAGORY:Ljava/lang/String; = "com.android.settings_ex.category.custom"

.field public static final DEBUG:Z = false

.field private static final DEBUG_TIMING:Z = true

.field private static final EXTRA_SCROLL_POSITION:Ljava/lang/String; = "scroll_position"

.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field public static final INITIAL_ITEMS:[Ljava/lang/String;

.field private static final SETTING_PKG:Ljava/lang/String; = "com.android.settings_ex"

.field private static final SUGGESTIONS:Ljava/lang/String; = "suggestions"

.field private static final TAG:Ljava/lang/String; = "DashboardSummary"

.field private static final WIRELESS_CATAGORY:Ljava/lang/String; = "com.android.settings_ex.category.wireless"

.field private static mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

.field private mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

.field private mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

.field private mCustomTileIconResources:[I

.field private mCustomTileIntentResources:[Ljava/lang/String;

.field private mCustomTileLabelResources:[I

.field private mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

.field private mSuggestionsChecks:Lcom/android/settings_ex/dashboard/SuggestionsChecks;

.field private mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

.field private mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

.field private mWirelessTileIconResources:[I

.field private mWirelessTileIntentResources:[Ljava/lang/String;

.field private mWirelessTileLabelResources:[I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/dashboard/DashboardSummary;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_ex/dashboard/DashboardAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_exlib/SuggestionParser;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_ex/dashboard/SuggestionsChecks;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings_ex/dashboard/SuggestionsChecks;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/dashboard/DashboardSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    const-class v1, Lcom/android/settings_ex/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 85
    const-class v1, Lcom/android/settings_ex/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 88
    const-class v1, Lcom/android/settings_ex/Settings$OPSimAndNetworkSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    const-class v1, Lcom/android/settings_ex/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 91
    const-class v1, Lcom/android/settings_ex/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 92
    const-class v1, Lcom/android/settings_ex/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 83
    sput-object v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 427
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$2;

    invoke-direct {v0}, Lcom/android/settings_ex/dashboard/DashboardSummary$2;-><init>()V

    .line 426
    sput-object v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 109
    const-string/jumbo v0, "content://com.oneplus.ap.upgrader.provider/all_download_files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    .line 117
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    const v0, 0x7f0e0713

    .line 384
    const v1, 0x7f0e06b3

    .line 385
    const v2, 0x7f0e02a4

    .line 386
    const v3, 0x7f0e0c9f

    .line 387
    const v4, 0x7f0e05ca

    .line 382
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mWirelessTileLabelResources:[I

    .line 390
    const v0, 0x7f020167

    .line 391
    const v1, 0x7f020141

    .line 392
    const v2, 0x7f0201f3

    .line 393
    const v3, 0x7f020149

    .line 394
    const v4, 0x7f020154

    .line 389
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mWirelessTileIconResources:[I

    .line 396
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 397
    const-string/jumbo v1, "com.android.settings_ex.Settings$WifiSettingsActivity"

    aput-object v1, v0, v5

    .line 398
    const-string/jumbo v1, "com.android.settings_ex.Settings$BluetoothSettingsActivity"

    aput-object v1, v0, v6

    .line 399
    const-string/jumbo v1, "com.android.settings_ex.Settings$OPSimAndNetworkSettings"

    aput-object v1, v0, v7

    .line 400
    const-string/jumbo v1, "com.android.settings_ex.Settings$OPDataUsageSummaryActivity"

    aput-object v1, v0, v8

    .line 401
    const-string/jumbo v1, "com.android.settings_ex.Settings$WirelessSettingsActivity"

    aput-object v1, v0, v9

    .line 396
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mWirelessTileIntentResources:[Ljava/lang/String;

    .line 405
    const v0, 0x7f0e025f

    .line 406
    const v1, 0x7f0e0485

    .line 407
    const v2, 0x7f0e0225

    .line 408
    const v3, 0x7f0e029a

    .line 404
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mCustomTileLabelResources:[I

    .line 411
    const v0, 0x7f0200ff

    .line 412
    const v1, 0x7f020144

    .line 413
    const v2, 0x7f02014e

    .line 414
    const v3, 0x7f0201f9

    .line 410
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mCustomTileIconResources:[I

    .line 417
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 418
    const-string/jumbo v1, "com.android.settings_ex.Settings$OPNotificationAndNotdisturbSettingsActivity"

    aput-object v1, v0, v5

    .line 419
    const-string/jumbo v1, "com.android.settings_ex.Settings$OPButtonsSettingsActivity"

    aput-object v1, v0, v6

    .line 420
    const-string/jumbo v1, "com.android.settings_ex.Settings$OPGestureSettingsActivity"

    aput-object v1, v0, v7

    .line 421
    const-string/jumbo v1, "com.android.settings_ex.Settings$OPStatusBarCustomizeSettingsActivity"

    aput-object v1, v0, v8

    .line 422
    const-string/jumbo v1, "com.android.settings_ex.Settings$OPFontStyleSettingsActivity"

    aput-object v1, v0, v9

    .line 423
    const-string/jumbo v1, "com.android.settings_ex.Settings$OPDefaultHomeSettingsActivity"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 417
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mCustomTileIntentResources:[Ljava/lang/String;

    .line 73
    return-void
.end method

.method private createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings_exlib/drawer/DashboardCategory;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categoryKey"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v0, Lcom/android/settings_exlib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settings_exlib/drawer/DashboardCategory;-><init>()V

    .line 477
    .local v0, "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    iput-object p2, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 478
    const-string/jumbo v1, "com.android.settings_ex.category.wireless"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e04f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 481
    :cond_0
    const-string/jumbo v1, "com.android.settings_ex.category.custom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0338

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 486
    :cond_1
    return-object v0
.end method

.method private initDashboard()Ljava/util/List;
    .locals 14
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
    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 436
    .local v4, "startTime":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v8, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/Tile;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mCustomTileLabelResources:[I

    array-length v9, v9

    if-ge v3, v9, :cond_0

    .line 438
    new-instance v6, Lcom/android/settings_exlib/drawer/Tile;

    invoke-direct {v6}, Lcom/android/settings_exlib/drawer/Tile;-><init>()V

    .line 439
    .local v6, "tile":Lcom/android/settings_exlib/drawer/Tile;
    const-string/jumbo v9, "com.android.settings_ex.category.custom"

    iput-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    .line 440
    const-string/jumbo v9, "com.android.settings_ex"

    iget-object v10, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mCustomTileIconResources:[I

    aget v10, v10, v3

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 441
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mCustomTileLabelResources:[I

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 442
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.android.settings_ex"

    iget-object v11, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mCustomTileIntentResources:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 443
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v6    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mWirelessTileLabelResources:[I

    array-length v9, v9

    if-ge v3, v9, :cond_1

    .line 447
    new-instance v6, Lcom/android/settings_exlib/drawer/Tile;

    invoke-direct {v6}, Lcom/android/settings_exlib/drawer/Tile;-><init>()V

    .line 448
    .restart local v6    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    const-string/jumbo v9, "com.android.settings_ex.category.wireless"

    iput-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    .line 449
    const-string/jumbo v9, "com.android.settings_ex"

    iget-object v10, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mWirelessTileIconResources:[I

    aget v10, v10, v3

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 450
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mWirelessTileLabelResources:[I

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 451
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.android.settings_ex"

    iget-object v11, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mWirelessTileIntentResources:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 452
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 454
    .end local v6    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v2, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "tile$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_exlib/drawer/Tile;

    .line 456
    .restart local v6    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v9, v6, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .line 457
    .local v1, "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    const-string/jumbo v9, "DashboardSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oneplus-- initDashboard--title:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string/jumbo v9, "DashboardSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oneplus-- initDashboard--category:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-nez v1, :cond_3

    .line 460
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, v6, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/dashboard/DashboardSummary;->createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings_exlib/drawer/DashboardCategory;

    move-result-object v1

    .line 461
    if-nez v1, :cond_2

    .line 462
    const-string/jumbo v9, "DashboardSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Couldn\'t find category "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 465
    :cond_2
    iget-object v9, v1, Lcom/android/settings_exlib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_3
    invoke-virtual {v1, v6}, Lcom/android/settings_exlib/drawer/DashboardCategory;->addTile(Lcom/android/settings_exlib/drawer/Tile;)V

    goto :goto_2

    .line 469
    .end local v1    # "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    .end local v6    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 470
    .local v0, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    const-string/jumbo v9, "DashboardSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oneplus-- initDashboard:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    .line 470
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 471
    const-string/jumbo v11, " ms"

    .line 470
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-object v0
.end method

.method private rebuildUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    const-string/jumbo v1, "DashboardSummary"

    const-string/jumbo v4, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 353
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 356
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->getEarlyDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 357
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    if-nez v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->initDashboard()Ljava/util/List;

    move-result-object v0

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->setCategories(Ljava/util/List;)V

    .line 376
    new-instance v1, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;

    invoke-direct {v1, p0, v5}, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    return-void

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-virtual {v1, v6}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setListening(Z)V

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->release()V

    .line 367
    :cond_2
    iput-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 368
    new-instance v1, Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/settings_ex/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 369
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setAdapter(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V

    .line 370
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setListening(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x23

    return v0
.end method

.method public onCategoriesChanged()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI()V

    .line 491
    return-void
.end method

.method public onConditionsChanged()V
    .locals 3

    .prologue
    .line 497
    const-string/jumbo v1, "DashboardSummary"

    const-string/jumbo v2, "onConditionsChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Looper;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getView()Landroid/view/View;

    move-result-object v0

    .line 502
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 503
    new-instance v1, Lcom/android/settings_ex/dashboard/DashboardSummary$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$3;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 196
    .local v2, "startTime":J
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v5}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    .line 205
    new-instance v1, Lcom/android/settings_exlib/SuggestionParser;

    .line 206
    const-string/jumbo v4, "suggestions"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const v5, 0x7f08008d

    .line 205
    invoke-direct {v1, v0, v4, v5}, Lcom/android/settings_exlib/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

    .line 207
    new-instance v1, Lcom/android/settings_ex/dashboard/SuggestionsChecks;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings_ex/dashboard/SuggestionsChecks;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings_ex/dashboard/SuggestionsChecks;

    .line 208
    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 209
    const-string/jumbo v5, " ms"

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mResolver:Landroid/content/ContentResolver;

    .line 212
    new-instance v1, Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;->startObserving()V

    .line 194
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 309
    const v0, 0x7f04005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/SummaryLoader;->release()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;->stopObserving()V

    .line 227
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 218
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    const-string/jumbo v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    return-void
.end method

.method public onStart()V
    .locals 12

    .prologue
    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 241
    .local v4, "startTime":J
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStart()V

    .line 243
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getLte4GEnabler()Lcom/android/settings_ex/Lte4GEnabler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings_ex/Lte4GEnabler;->resume()V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v7, p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 245
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    if-eqz v7, :cond_0

    .line 246
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setListening(Z)V

    .line 248
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v7}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/conditional/Condition;

    .line 249
    .local v0, "c":Lcom/android/settings_ex/dashboard/conditional/Condition;
    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->shouldShow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    goto :goto_0

    .line 253
    .end local v0    # "c":Lcom/android/settings_ex/dashboard/conditional/Condition;
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 254
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "suggestion$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/drawer/Tile;

    .line 255
    .local v3, "suggestion":Lcom/android/settings_exlib/drawer/Tile;
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 256
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settings_exlib/drawer/Tile;)Ljava/lang/String;

    move-result-object v8

    .line 255
    const/16 v9, 0x180

    invoke-static {v7, v9, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 260
    .end local v3    # "suggestion":Lcom/android/settings_exlib/drawer/Tile;
    .end local v6    # "suggestion$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 261
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStart took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 267
    const-string/jumbo v9, " ms"

    .line 266
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public onStop()V
    .locals 7

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStop()V

    .line 273
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getLte4GEnabler()Lcom/android/settings_ex/Lte4GEnabler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/Lte4GEnabler;->pause()V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v4, p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 276
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setListening(Z)V

    .line 279
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v4}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/conditional/Condition;

    .line 280
    .local v0, "c":Lcom/android/settings_ex/dashboard/conditional/Condition;
    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->shouldShow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    goto :goto_0

    .line 284
    .end local v0    # "c":Lcom/android/settings_ex/dashboard/conditional/Condition;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    .line 285
    return-void

    .line 287
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "suggestion$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/drawer/Tile;

    .line 288
    .local v2, "suggestion":Lcom/android/settings_exlib/drawer/Tile;
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settings_exlib/drawer/Tile;)Ljava/lang/String;

    move-result-object v5

    .line 288
    const/16 v6, 0x181

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 271
    .end local v2    # "suggestion":Lcom/android/settings_exlib/drawer/Tile;
    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 322
    .local v2, "startTime":J
    const v1, 0x7f110110

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    .line 323
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 324
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 325
    if-eqz p2, :cond_0

    .line 326
    const-string/jumbo v1, "scroll_position"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 327
    .local v0, "scrollPosition":I
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 329
    .end local v0    # "scrollPosition":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 330
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v5}, Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    .line 331
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;->setListener(Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView$FocusListener;)V

    .line 333
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v6}, Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 335
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Lcom/android/settings_ex/dashboard/DashboardDecorator;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/dashboard/DashboardDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 336
    new-instance v1, Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

    invoke-direct {v1, v4, v5}, Lcom/android/settings_ex/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/SuggestionParser;)V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    .line 337
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v4}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 338
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings_ex/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 339
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings_ex/dashboard/conditional/FocusRecyclerView;

    invoke-static {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->addDismiss(Landroid/support/v7/widget/RecyclerView;)V

    .line 340
    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onViewCreated took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 340
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 341
    const-string/jumbo v5, " ms"

    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI()V

    .line 344
    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onViewCreated took--1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 344
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 345
    const-string/jumbo v5, " ms"

    .line 344
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 296
    .local v0, "startTime":J
    if-eqz p1, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addListener(Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->refreshAll()V

    .line 302
    :goto_0
    const-string/jumbo v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 302
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    const-string/jumbo v4, " ms"

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->remListener(Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;)V

    goto :goto_0
.end method
