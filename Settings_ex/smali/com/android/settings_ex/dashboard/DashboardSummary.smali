.class public Lcom/android/settings_ex/dashboard/DashboardSummary;
.super Landroid/app/Fragment;
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

.field private mconfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mconfig:Landroid/content/res/Configuration;

    .line 52
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 70
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
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const-string v2, "DashboardSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 148
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 150
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 152
    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v9

    .line 155
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 157
    .local v14, "count":I
    const/16 v18, 0x0

    .local v18, "n":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v14, :cond_2

    .line 158
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 160
    .local v10, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 163
    .local v13, "categoryView":Landroid/view/View;
    const v2, 0x7f0f0070

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 164
    .local v12, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v2, 0x7f0f0071

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 169
    .local v11, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v22

    .line 170
    .local v22, "tilesCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v15, v0, :cond_1

    .line 171
    invoke-virtual {v10, v15}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v5

    .line 173
    .local v5, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    new-instance v19, Lcom/android/settings_ex/dashboard/DashboardTileView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .line 174
    .local v19, "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 177
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    .line 179
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 183
    .end local v5    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v19    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 185
    .end local v10    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v11    # "categoryContent":Landroid/view/ViewGroup;
    .end local v12    # "categoryLabel":Landroid/widget/TextView;
    .end local v13    # "categoryView":Landroid/view/View;
    .end local v15    # "i":I
    .end local v22    # "tilesCount":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 186
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 192
    iget v1, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    .line 193
    iget v1, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 202
    .local v0, "summary":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_1
    return-void

    .line 195
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 206
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 135
    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0f006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 138
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->setFontSize()V

    .line 87
    return-void
.end method

.method public setFontSize()V
    .locals 9

    .prologue
    .line 93
    :try_start_0
    const-string v4, "android.app.ActivityManagerNative"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 95
    .local v0, "activityManagerNative":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    .local v1, "am":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "updateConfiguration"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/res/Configuration;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 97
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mconfig:Landroid/content/res/Configuration;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .end local v0    # "activityManagerNative":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "am":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 98
    .restart local v0    # "activityManagerNative":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 115
    .end local v0    # "activityManagerNative":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "activityManagerNative":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
