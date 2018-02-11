.class public Lcom/android/settings_ex/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;,
        Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SUGGESTION_COUNT:I = 0x2

.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final LTE_4G_ACTIVITY:Ljava/lang/String; = "Lte4GEnableActivity"

.field private static final NS_CONDITION:I = 0xbb8

.field private static final NS_ITEMS:I = 0x7d0

.field private static final NS_SPACER:I = 0x0

.field private static final NS_SUGGESTION:I = 0x3e8

.field private static SUGGESTION_MODE_COLLAPSED:I = 0x0

.field private static SUGGESTION_MODE_DEFAULT:I = 0x0

.field private static SUGGESTION_MODE_EXPANDED:I = 0x0

.field private static final SYSTEM_UPDATE_INTENT:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final TAG:Ljava/lang/String; = "DashboardAdapter"


# instance fields
.field private final ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

.field private final mCache:Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

.field private mId:I

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowingAll:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

.field private mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

.field private mSuggestionMode:I

.field private mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mSw:Landroid/widget/Switch;

.field private final mTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIsShowingAll:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/dashboard/DashboardAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestionMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/dashboard/DashboardAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->hasMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/dashboard/DashboardAdapter;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->set4GEnableSummary(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    .line 69
    const/4 v0, 0x2

    sput v0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/SuggestionParser;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lcom/android/settings_exlib/SuggestionParser;

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    .line 93
    sget v0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    iput v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestionMode:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    .line 99
    const-string/jumbo v0, "content://com.oneplus.ap.upgrader.provider/all_download_files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCache:Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;

    .line 105
    new-instance v0, Lcom/android/settings_ex/Lte4GEnabler;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/Lte4GEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

    .line 106
    iput-object p2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

    .line 108
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->setHasStableIds(Z)V

    .line 109
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->setShowingAll(Z)V

    .line 102
    return-void
.end method

.method private checkShowUpdateIconNeeded()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 443
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "has_new_version_to_update"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    .line 444
    .local v1, "systemHasUpdate":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getNeedUpdateAppCount(Landroid/content/ContentResolver;)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 445
    .local v0, "appHasUpdate":Z
    :goto_1
    if-nez v1, :cond_2

    .end local v0    # "appHasUpdate":Z
    :goto_2
    return v0

    .line 443
    .end local v1    # "systemHasUpdate":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "systemHasUpdate":Z
    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "appHasUpdate":Z
    goto :goto_1

    :cond_2
    move v0, v2

    .line 445
    goto :goto_2
.end method

.method private countItem(Ljava/lang/Object;IZI)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "add"    # Z
    .param p4, "nameSpace"    # I

    .prologue
    .line 270
    if-eqz p3, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    iget v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mId:I

    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mId:I

    .line 269
    return-void
.end method

.method public static getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settings_exlib/drawer/Tile;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 573
    iget-object v1, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 579
    :cond_0
    return-object v0
.end method

.method private hasMoreSuggestions()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    iget v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v3, Lcom/android/settings_ex/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    if-eq v2, v3, :cond_0

    .line 407
    iget v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestionMode:I

    sget v3, Lcom/android/settings_ex/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    if-ne v2, v3, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 408
    goto :goto_0

    :cond_2
    move v0, v1

    .line 407
    goto :goto_0
.end method

.method private isAPMAndSimStateEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 158
    const-string/jumbo v2, "airplane_mode_on"

    .line 157
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/Lte4GEnabler;->isThereSimReady()Z

    move-result v0

    .line 157
    :cond_0
    return v0
.end method

.method private onBindCategory(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settings_exlib/drawer/DashboardCategory;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "category"    # Lcom/android/settings_exlib/drawer/DashboardCategory;

    .prologue
    .line 475
    iget-object v0, p2, Lcom/android/settings_exlib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e04f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :goto_0
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings_exlib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    return-void

    .line 479
    :cond_0
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onBindSeeAll(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    .prologue
    .line 485
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0fda

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 487
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter$5;-><init>(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    return-void

    .line 486
    :cond_0
    const v0, 0x7f0e0fd9

    goto :goto_0
.end method

.method private onBindSuggestionHeader(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    .prologue
    .line 389
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->hasMoreSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020103

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0e1001

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter$4;-><init>(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-void

    .line 390
    :cond_0
    const v0, 0x7f020102

    goto :goto_0
.end method

.method private onBindTile(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 6
    .param p1, "holder"    # Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 412
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCache:Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;

    iget-object v3, p2, Lcom/android/settings_exlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v1, p2, Lcom/android/settings_exlib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/settings_exlib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    :goto_0
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0487

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->checkShowUpdateIconNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :cond_0
    :goto_1
    return-void

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0711

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "wifiTitle":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e002b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 435
    .end local v0    # "wifiTitle":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->newverison:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private recountItems()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/16 v10, 0x7d0

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->reset()V

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "hasConditions":Z
    const/4 v2, 0x0

    .end local v1    # "hasConditions":Z
    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 216
    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v6}, Lcom/android/settings_ex/dashboard/conditional/Condition;->shouldShow()Z

    move-result v4

    .line 217
    .local v4, "shouldShow":Z
    or-int/2addr v1, v4

    .line 218
    .local v1, "hasConditions":Z
    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f040042

    const/16 v9, 0xbb8

    invoke-direct {p0, v6, v8, v4, v9}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "hasConditions":Z
    .end local v4    # "shouldShow":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->resetCount()V

    .line 239
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 240
    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .line 241
    .local v0, "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    iget-boolean v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIsShowingAll:Z

    const v8, 0x7f04005b

    invoke-direct {p0, v0, v8, v6, v10}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 242
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v6, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 243
    iget-object v6, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_exlib/drawer/Tile;

    .line 244
    .local v5, "tile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v6, v5, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "Lte4GEnableActivity"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    iget-boolean v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-nez v6, :cond_1

    .line 246
    sget-object v6, Lcom/android/settings_ex/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 247
    iget-object v8, v5, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 246
    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 245
    :goto_3
    const v8, 0x7f04005e

    invoke-direct {p0, v5, v8, v6, v10}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    .line 242
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v6, v7

    .line 245
    goto :goto_3

    .line 249
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIsShowingAll:Z

    if-nez v6, :cond_3

    .line 250
    sget-object v6, Lcom/android/settings_ex/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 251
    iget-object v8, v5, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 249
    :goto_5
    const v8, 0x7f04005d

    invoke-direct {p0, v5, v8, v6, v10}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    goto :goto_4

    :cond_3
    move v6, v7

    goto :goto_5

    .line 239
    .end local v5    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    .end local v0    # "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    .end local v3    # "j":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mId:I

    .line 262
    return-void
.end method

.method private resetCount()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mId:I

    .line 258
    return-void
.end method

.method private set4GEnableSummary(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 165
    const v1, 0x7f0e109b

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    .line 168
    const v1, 0x7f0e109c

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showRemoveOption(Landroid/view/View;Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 355
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f100314

    const v4, 0x7f100313

    invoke-static {v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->getRightTheme(Landroid/content/Context;II)I

    move-result v1

    .line 358
    .local v1, "themeId":I
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    .line 359
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 358
    invoke-direct {v0, v2, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 360
    .local v0, "popup":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0e1003

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 361
    new-instance v3, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;

    invoke-direct {v3, p0, p2}, Lcom/android/settings_ex/dashboard/DashboardAdapter$3;-><init>(Lcom/android/settings_ex/dashboard/DashboardAdapter;Lcom/android/settings_exlib/drawer/Tile;)V

    .line 360
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 372
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 353
    return-void
.end method


# virtual methods
.method public disableSuggestion(Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 4
    .param p1, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

    if-nez v0, :cond_0

    .line 377
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

    invoke-virtual {v0, p1}, Lcom/android/settings_exlib/SuggestionParser;->dismissSuggestion(Lcom/android/settings_exlib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 381
    iget-object v1, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 382
    const/4 v2, 0x2

    .line 383
    const/4 v3, 0x1

    .line 380
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settings_exlib/SuggestionParser;

    iget-object v1, p1, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/SuggestionParser;->markCategoryDone(Ljava/lang/String;)V

    .line 375
    :cond_1
    return-void
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 5
    .param p1, "itemId"    # J

    .prologue
    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLte4GEnabler()Lcom/android/settings_ex/Lte4GEnabler;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

    return-object v0
.end method

.method public getNeedUpdateAppCount(Landroid/content/ContentResolver;)I
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 449
    const/4 v6, 0x0

    .line 450
    .local v6, "count":I
    const/4 v7, 0x0

    .line 452
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "canInstall =?"

    .line 453
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "1"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 454
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 455
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 456
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 465
    :cond_0
    if-eqz v7, :cond_1

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 470
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v6

    .line 461
    :catch_0
    move-exception v8

    .line 462
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    if-eqz v7, :cond_1

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 464
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 465
    if-eqz v7, :cond_2

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_2
    throw v0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public getTile(Landroid/content/ComponentName;)Lcom/android/settings_exlib/drawer/Tile;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 123
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/drawer/DashboardCategory;

    iget-object v3, v3, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/drawer/DashboardCategory;

    iget-object v3, v3, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/drawer/Tile;

    .line 125
    .local v2, "tile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v3, v2, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    return-object v2

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "j":I
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public isShowingAll()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIsShowingAll:Z

    return v0
.end method

.method public notifyChanged(Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 286
    check-cast p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "position"    # I

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 289
    :sswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v2}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->onBindCategory(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settings_exlib/drawer/DashboardCategory;)V

    goto :goto_0

    .line 292
    :sswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/Tile;

    .line 293
    .local v0, "tile":Lcom/android/settings_exlib/drawer/Tile;
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settings_exlib/drawer/Tile;)V

    .line 294
    iget-object v2, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object v2, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 298
    .end local v0    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :sswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/drawer/Tile;

    .line 299
    .local v1, "tileSitch":Lcom/android/settings_exlib/drawer/Tile;
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    .line 300
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settings_exlib/drawer/Tile;)V

    .line 301
    iget-object v2, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v2, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v3, 0x7f1100a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    .line 303
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/Lte4GEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 304
    iget-object v2, p1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/settings_ex/dashboard/DashboardAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter$1;-><init>(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->updateLte4GEnabler()V

    goto :goto_0

    .line 338
    .end local v1    # "tileSitch":Lcom/android/settings_exlib/drawer/Tile;
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->onBindSeeAll(Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;)V

    goto :goto_0

    .line 341
    :sswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/conditional/Condition;

    .line 342
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 343
    :goto_1
    new-instance v4, Lcom/android/settings_ex/dashboard/DashboardAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter$2;-><init>(Lcom/android/settings_ex/dashboard/DashboardAdapter;)V

    .line 341
    invoke-static {v2, p1, v3, p0, v4}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->bindViews(Lcom/android/settings_ex/dashboard/conditional/Condition;Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 342
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 287
    :sswitch_data_0
    .sparse-switch
        0x7f040042 -> :sswitch_4
        0x7f04005b -> :sswitch_0
        0x7f04005d -> :sswitch_1
        0x7f04005e -> :sswitch_2
        0x7f04018a -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f110114

    if-ne v4, v5, :cond_0

    .line 513
    return-void

    .line 515
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f110112

    if-ne v4, v5, :cond_2

    .line 516
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/drawer/Tile;

    iget-object v4, v4, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 518
    const v6, 0x7f0e086a

    .line 517
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 516
    if-eqz v4, :cond_1

    .line 519
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 522
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 521
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 523
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 524
    .local v1, "listSize":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    .line 525
    return-void

    .line 528
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "listSize":I
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_exlib/drawer/Tile;

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/SettingsActivity;->openTile(Lcom/android/settings_exlib/drawer/Tile;)Z

    .line 529
    return-void

    .line 531
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    if-ne v4, v5, :cond_3

    .line 532
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 533
    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v5}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v5

    .line 532
    const/16 v6, 0x177

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 534
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v4}, Lcom/android/settings_ex/dashboard/conditional/Condition;->onPrimaryClick()V

    .line 511
    :goto_0
    return-void

    .line 536
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/dashboard/conditional/Condition;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    .line 538
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0e03e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v5}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 539
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 540
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CheckUpdate"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 546
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 542
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 543
    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v5}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v5

    .line 542
    const/16 v6, 0x175

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v0, 0x0

    .line 281
    new-instance v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 282
    const v3, 0x7f04005e

    if-ne p2, v3, :cond_0

    const/4 v0, 0x1

    .line 281
    :cond_0
    invoke-direct {v1, v2, v0}, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;Z)V

    return-object v1
.end method

.method public onExpandClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 553
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    .line 552
    const/16 v2, 0x176

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    .line 560
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 550
    return-void

    .line 556
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/conditional/Condition;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    .line 557
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 558
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mExpandedCondition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    .line 557
    const/16 v2, 0x175

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    .line 176
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 177
    .local v3, "tintColor":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    .line 178
    const/4 v6, 0x1

    .line 177
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 180
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/drawer/Tile;

    .line 183
    .local v2, "tile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 184
    iget-object v5, v2, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    iget-object v4, v2, Lcom/android/settings_exlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    .end local v2    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "j":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->recountItems()V

    .line 172
    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/conditional/Condition;>;"
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mConditions:Ljava/util/List;

    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->recountItems()V

    .line 194
    return-void
.end method

.method public setShowingAll(Z)V
    .locals 0
    .param p1, "showingAll"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mIsShowingAll:Z

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->recountItems()V

    .line 207
    return-void
.end method

.method public setSuggestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/Tile;>;"
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSuggestions:Ljava/util/List;

    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->recountItems()V

    .line 116
    return-void
.end method

.method public updateLte4GEnabler()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    if-nez v1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->isAPMAndSimStateEnable()Z

    move-result v0

    .line 141
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->sw:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v2, v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, 0x7f020138

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    if-nez v0, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mLte4GEnablerHolder:Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v2, 0x7f0e109d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :goto_1
    return-void

    .line 147
    :cond_1
    const v1, 0x7f020139

    goto :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter;->mSw:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->set4GEnableSummary(Z)V

    goto :goto_1
.end method
