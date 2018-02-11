.class public Lcom/android/settings_exlib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/drawer/TileUtils$1;,
        Lcom/android/settings_exlib/drawer/TileUtils$2;
    }
.end annotation


# static fields
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

.field private static final DEBUG:Z = false

.field private static final DEBUG_TIMING:Z = false

.field private static final EXTRA_CATEGORY_KEY:Ljava/lang/String; = "com.android.settings_ex.category"

.field private static final EXTRA_SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings_ex.action.EXTRA_SETTINGS"

.field private static final FRAGMENT_KEY:Ljava/lang/String; = "com.android.settings_ex.FRAGMENT_CLASS"

.field private static final GOOGLE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gms"

.field private static final LOG_TAG:Ljava/lang/String; = "TileUtils"

.field private static final MANUFACTURER_DEFAULT_CATEGORY:Ljava/lang/String; = "com.android.settings_ex.category.device"

.field private static final MANUFACTURER_SETTINGS:Ljava/lang/String; = "com.android.settings_ex.MANUFACTURER_APPLICATION_SETTING"

.field public static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings_ex.icon"

.field public static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings_ex.summary"

.field public static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings_ex.title"

.field private static final ONEPLUS_SETUPWIZARD:Ljava/lang/String; = "com.oneplus.setupwizard"

.field private static final OPERATOR_DEFAULT_CATEGORY:Ljava/lang/String; = "com.android.settings_ex.category.wireless"

.field private static final OPERATOR_SETTINGS:Ljava/lang/String; = "com.android.settings_ex.OPERATOR_APPLICATION_SETTING"

.field private static final PRIVACYSETTINGS_VALUE:Ljava/lang/String; = "com.android.settings_ex.PrivacySettings"

.field private static final SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings_ex.action.SETTINGS"

.field private static final SETTINGS_CUSTOM_CATAGORY:Ljava/lang/String; = "com.android.settings_ex.category.custom"

.field private static final SETTING_PKG:Ljava/lang/String; = "com.android.settings_ex"

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/android/settings_exlib/drawer/TileUtils$1;

    invoke-direct {v0}, Lcom/android/settings_exlib/drawer/TileUtils$1;-><init>()V

    .line 348
    sput-object v0, Lcom/android/settings_exlib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    .line 357
    new-instance v0, Lcom/android/settings_exlib/drawer/TileUtils$2;

    invoke-direct {v0}, Lcom/android/settings_exlib/drawer/TileUtils$2;-><init>()V

    .line 356
    sput-object v0, Lcom/android/settings_exlib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings_exlib/drawer/DashboardCategory;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 175
    new-instance v0, Lcom/android/settings_exlib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settings_exlib/drawer/DashboardCategory;-><init>()V

    .line 176
    .local v0, "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    iput-object p1, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 178
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 179
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 180
    const/4 v5, 0x0

    return-object v5

    .line 182
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolved$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 183
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_1

    .line 187
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 188
    const-string/jumbo v5, "com.android.settings_ex"

    .line 189
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 188
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 188
    :goto_1
    iput v5, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->priority:I

    goto :goto_0

    :cond_2
    move v5, v6

    .line 189
    goto :goto_1

    .line 193
    .end local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v0
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings_exlib/drawer/Tile;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 130
    .local v14, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v13, 0x1

    .line 132
    .local v13, "setup":Z
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v7, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/Tile;>;"
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    .line 134
    .local v19, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 136
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 138
    const-string/jumbo v4, "com.android.settings_ex.action.SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settings_exlib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 140
    const-string/jumbo v4, "com.android.settings_ex.category.custom"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settings_exlib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 142
    const-string/jumbo v4, "com.android.settings_ex.OPERATOR_APPLICATION_SETTING"

    .line 143
    const-string/jumbo v6, "com.android.settings_ex.category.wireless"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 142
    invoke-static/range {v2 .. v8}, Lcom/android/settings_exlib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 144
    const-string/jumbo v4, "com.android.settings_ex.MANUFACTURER_APPLICATION_SETTING"

    .line 145
    const-string/jumbo v6, "com.android.settings_ex.category.device"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 144
    invoke-static/range {v2 .. v8}, Lcom/android/settings_exlib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 147
    :cond_1
    if-eqz v13, :cond_0

    .line 148
    const-string/jumbo v4, "com.android.settings_ex.action.EXTRA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settings_exlib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    goto :goto_1

    .line 130
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/Tile;>;"
    .end local v13    # "setup":Z
    .end local v18    # "user$iterator":Ljava/util/Iterator;
    .end local v19    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "setup":Z
    goto :goto_0

    .line 151
    .restart local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/Tile;>;"
    .restart local v18    # "user$iterator":Ljava/util/Iterator;
    .restart local v19    # "userManager":Landroid/os/UserManager;
    :cond_3
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v12, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "tile$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings_exlib/drawer/Tile;

    .line 153
    .local v16, "tile":Lcom/android/settings_exlib/drawer/Tile;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .line 154
    .local v10, "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    if-nez v10, :cond_5

    .line 155
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settings_exlib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings_exlib/drawer/DashboardCategory;

    move-result-object v10

    .line 156
    if-nez v10, :cond_4

    .line 157
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 160
    :cond_4
    iget-object v2, v10, Lcom/android/settings_exlib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v12, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/settings_exlib/drawer/DashboardCategory;->addTile(Lcom/android/settings_exlib/drawer/Tile;)V

    goto :goto_2

    .line 164
    .end local v10    # "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    .end local v16    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    .local v9, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "category$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .line 166
    .restart local v10    # "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    iget-object v2, v10, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    sget-object v4, Lcom/android/settings_exlib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 168
    .end local v10    # "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    :cond_7
    sget-object v2, Lcom/android/settings_exlib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    return-object v9
.end method

.method private static getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings_exlib/drawer/DashboardCategory;
    .locals 3
    .param p1, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "category$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .line 263
    .local v0, "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    iget-object v2, v0, Lcom/android/settings_exlib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    return-object v0

    .line 267
    .end local v0    # "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings_exlib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/Tile;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 201
    const-string/jumbo v0, "com.android.settings_ex"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_0
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 203
    invoke-static/range {v0 .. v7}, Lcom/android/settings_exlib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 198
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "usePriority"    # Z
    .param p7, "checkCategory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings_exlib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/Tile;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 212
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    const/16 v11, 0x80

    .line 211
    invoke-virtual {v5, p2, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 213
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "resolved$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 215
    .local v6, "resolved":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v10, "com.oneplus.setupwizard"

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 219
    iget-boolean v10, v6, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v10, :cond_0

    .line 223
    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 224
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 225
    .local v4, "metaData":Landroid/os/Bundle;
    move-object/from16 v2, p4

    .line 226
    .local v2, "categoryKey":Ljava/lang/String;
    if-eqz p7, :cond_1

    if-eqz v4, :cond_4

    const-string/jumbo v10, "com.android.settings_ex.category"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 233
    :cond_1
    const-string/jumbo v10, "com.android.settings_ex.category"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    new-instance v3, Landroid/util/Pair;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 236
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 235
    invoke-direct {v3, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_exlib/drawer/Tile;

    .line 238
    .local v9, "tile":Lcom/android/settings_exlib/drawer/Tile;
    if-nez v9, :cond_2

    .line 239
    new-instance v9, Lcom/android/settings_exlib/drawer/Tile;

    .end local v9    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    invoke-direct {v9}, Lcom/android/settings_exlib/drawer/Tile;-><init>()V

    .line 240
    .restart local v9    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 241
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 240
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 242
    iput-object v2, v9, Lcom/android/settings_exlib/drawer/Tile;->category:Ljava/lang/String;

    .line 243
    if-eqz p6, :cond_6

    iget v10, v6, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_1
    iput v10, v9, Lcom/android/settings_exlib/drawer/Tile;->priority:I

    .line 244
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object v10, v9, Lcom/android/settings_exlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 245
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v9, v1, v10, v5}, Lcom/android/settings_exlib/drawer/TileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settings_exlib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    .line 249
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_2
    iget-object v10, v9, Lcom/android/settings_exlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 252
    iget-object v10, v9, Lcom/android/settings_exlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_3
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 255
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 227
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_4
    if-nez p4, :cond_1

    .line 228
    const-string/jumbo v11, "TileUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " for intent "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 229
    const-string/jumbo v12, " missing metadata "

    .line 228
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 230
    if-nez v4, :cond_5

    const-string/jumbo v10, ""

    .line 228
    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :cond_5
    const-string/jumbo v10, "com.android.settings_ex.category"

    goto :goto_2

    .line 243
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 209
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "categoryKey":Ljava/lang/String;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v6    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v9    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_7
    return-void
.end method

.method private static updateTileData(Landroid/content/Context;Lcom/android/settings_exlib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 272
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "icon":I
    const/4 v7, 0x0

    .line 275
    .local v7, "title":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 277
    .local v6, "summary":Ljava/lang/String;
    const/4 v3, 0x0

    .line 283
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    iget-object v8, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 282
    invoke-virtual {p4, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 284
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 285
    .local v4, "metaData":Landroid/os/Bundle;
    const-string/jumbo v8, "com.android.settings_ex.FRAGMENT_CLASS"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 287
    .local v3, "key":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 288
    const-string/jumbo v8, "com.android.settings_ex.icon"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 289
    const-string/jumbo v8, "com.android.settings_ex.icon"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 291
    :cond_0
    const-string/jumbo v8, "com.android.settings_ex.title"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    const-string/jumbo v8, "com.android.settings_ex.title"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_7

    .line 293
    const-string/jumbo v8, "com.android.settings_ex.title"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 298
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const-string/jumbo v8, "com.android.settings_ex.summary"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 299
    const-string/jumbo v8, "com.android.settings_ex.summary"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_8

    .line 300
    const-string/jumbo v8, "com.android.settings_ex.summary"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 307
    .end local v6    # "summary":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v8, "com.android.settings_ex.PrivacySettings"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v9, v8, v10

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_9

    .line 318
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_3
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 319
    invoke-virtual {p2, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 321
    :cond_4
    if-nez v2, :cond_5

    .line 322
    iget v2, p2, Landroid/content/pm/ActivityInfo;->icon:I

    .line 327
    :cond_5
    const-string/jumbo v8, "com.google.android.gms"

    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 328
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    iput-object v8, p1, Lcom/android/settings_exlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 332
    :goto_3
    const-string/jumbo v8, "com.android.settings_ex.PrivacySettings"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v9, v8, v10

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 336
    :cond_6
    :goto_4
    iput-object v7, p1, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 337
    iput-object v6, p1, Lcom/android/settings_exlib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 339
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 340
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 339
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 342
    const/4 v8, 0x1

    return v8

    .line 295
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "summary":Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :cond_7
    :try_start_1
    const-string/jumbo v8, "com.android.settings_ex.title"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 302
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_8
    const-string/jumbo v8, "com.android.settings_ex.summary"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "summary":Ljava/lang/String;
    goto :goto_1

    .line 308
    .end local v6    # "summary":Ljava/lang/String;
    :cond_9
    const v8, 0x104012e

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .restart local v7    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 330
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_a
    sget v8, Lcom/android/settings_exlib/R$drawable;->op_ic_google:I

    invoke-static {p0, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    iput-object v8, p1, Lcom/android/settings_exlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_3

    .line 333
    :cond_b
    sget v8, Lcom/android/settings_exlib/R$drawable;->op_ic_settings_factory_reset:I

    invoke-static {p0, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    iput-object v8, p1, Lcom/android/settings_exlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_4

    .line 345
    .end local v2    # "icon":I
    :cond_c
    const/4 v8, 0x0

    return v8

    .line 312
    .restart local v2    # "icon":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2
.end method
