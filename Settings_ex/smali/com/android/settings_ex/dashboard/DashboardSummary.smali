.class public Lcom/android/settings_ex/dashboard/DashboardSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DashboardSummary"

.field private static final MSG_REBUILD_UI:I = 0x1


# instance fields
.field private mDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    const-string v2, "DashboardSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 135
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 137
    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v9

    .line 140
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 142
    .local v14, "count":I
    const/16 v16, 0x0

    .local v16, "n":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_0

    .line 143
    move/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 145
    .local v10, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 148
    .local v13, "categoryView":Landroid/view/View;
    const v2, 0x7f120066

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 149
    .local v12, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v2, 0x7f120067

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 154
    .local v11, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v18

    .line 155
    .local v18, "tilesCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 156
    invoke-virtual {v10, v15}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v5

    .line 158
    .local v5, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    new-instance v17, Lcom/android/settings_ex/dashboard/DashboardTileView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v17, "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 162
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    .line 164
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 168
    .end local v5    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v17    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    .line 175
    iget-object v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 181
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 182
    .local v3, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 184
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 186
    .end local v3    # "tintColor":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 201
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 202
    const/4 v4, 0x0

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_1
    return-void

    .line 187
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_2

    .line 192
    iget v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 205
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 187
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x23

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0bba

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 121
    const v1, 0x7f04003a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f120064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 124
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method
