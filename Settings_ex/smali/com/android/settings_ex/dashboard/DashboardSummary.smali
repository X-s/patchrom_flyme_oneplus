.class public Lcom/android/settings_ex/dashboard/DashboardSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;,
        Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# static fields
.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final LOG_TAG:Ljava/lang/String; = "DashboardSummary"

.field private static final MSG_REBUILD_UI:I = 0x1


# instance fields
.field private final ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 57
    const-string v0, "content://com.oneplus.ap.upgrader.provider/all_download_files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    .line 65
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/dashboard/DashboardSummary;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/dashboard/DashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->sendRebuildUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/dashboard/DashboardSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkShowUpdateIconNeeded()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "has_new_version_to_update"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 236
    .local v1, "systemHasUpdate":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getNeedUpdateAppCount(Landroid/content/ContentResolver;)I

    move-result v4

    if-lez v4, :cond_3

    move v0, v2

    .line 237
    .local v0, "appHasUpdate":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "appHasUpdate":Z
    .end local v1    # "systemHasUpdate":Z
    :cond_2
    move v1, v3

    .line 235
    goto :goto_0

    .restart local v1    # "systemHasUpdate":Z
    :cond_3
    move v0, v3

    .line 236
    goto :goto_1
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

    .line 189
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

    if-ge v0, v14, :cond_3

    .line 158
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 160
    .local v10, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 163
    .local v13, "categoryView":Landroid/view/View;
    const v2, 0x7f12007c

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 164
    .local v12, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v2, 0x7f12007d

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

    if-ge v15, v0, :cond_2

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

    .line 178
    iget-wide v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    const-wide/32 v6, 0x7f1202e7

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->checkShowUpdateIconNeeded()Z

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/DashboardTileView;->showRightIcon(Z)V

    .line 181
    :cond_1
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 185
    .end local v5    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v19    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 187
    .end local v10    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v11    # "categoryContent":Landroid/view/ViewGroup;
    .end local v12    # "categoryLabel":Landroid/widget/TextView;
    .end local v13    # "categoryView":Landroid/view/View;
    .end local v15    # "i":I
    .end local v22    # "tilesCount":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 188
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

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
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

    .line 194
    iget-object v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
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

    .line 198
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 200
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 201
    .local v3, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 203
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 205
    .end local v3    # "tintColor":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 220
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 221
    const/4 v4, 0x0

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_1
    return-void

    .line 206
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_2

    .line 211
    iget v4, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 224
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 206
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x23

    return v0
.end method

.method public getNeedUpdateAppCount(Landroid/content/ContentResolver;)I
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 241
    const/4 v6, 0x0

    .line 242
    .local v6, "count":I
    const/4 v7, 0x0

    .line 244
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "canInstall =?"

    .line 245
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 246
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 247
    if-eqz v7, :cond_0

    .line 248
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 249
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 251
    :catch_0
    move-exception v8

    .line 252
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mResolver:Landroid/content/ContentResolver;

    .line 97
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;->startObserving()V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0b8b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 135
    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f12007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 138
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardSummary$SystemUpdateObserver;->stopObserving()V

    .line 302
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 303
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

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
    .line 110
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method
