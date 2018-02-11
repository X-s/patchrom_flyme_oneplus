.class public Lcom/android/settings_exlib/SuggestionParser;
.super Ljava/lang/Object;
.source "SuggestionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;,
        Lcom/android/settings_exlib/SuggestionParser$SuggestionOrderInflater;
    }
.end annotation


# static fields
.field private static final DISMISS_INDEX:Ljava/lang/String; = "_dismiss_index"

.field private static final IS_DISMISSED:Ljava/lang/String; = "_is_dismissed"

.field public static final META_DATA_DISMISS_CONTROL:Ljava/lang/String; = "com.android.settings_ex.dismiss"

.field private static final META_DATA_IS_SUPPORTED:Ljava/lang/String; = "com.android.settings_ex.is_supported"

.field private static final META_DATA_REQUIRE_ACCOUNT:Ljava/lang/String; = "com.android.settings_ex.require_account"

.field public static final META_DATA_REQUIRE_FEATURE:Ljava/lang/String; = "com.android.settings_ex.require_feature"

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final SETUP_TIME:Ljava/lang/String; = "_setup_time"

.field private static final TAG:Ljava/lang/String; = "SuggestionParser"


# instance fields
.field private final addCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
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

.field private final mContext:Landroid/content/Context;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p3, "orderXml"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/SuggestionParser;->addCache:Landroid/util/ArrayMap;

    .line 82
    iput-object p1, p0, Lcom/android/settings_exlib/SuggestionParser;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/android/settings_exlib/SuggestionParser$SuggestionOrderInflater;

    iget-object v1, p0, Lcom/android/settings_exlib/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/SuggestionParser$SuggestionOrderInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/android/settings_exlib/SuggestionParser$SuggestionOrderInflater;->parse(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings_exlib/SuggestionParser;->mSuggestionList:Ljava/util/List;

    .line 85
    iput-object p2, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 81
    return-void
.end method

.method private getEndTime(JI)J
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "daysDelay"    # I

    .prologue
    .line 226
    int-to-long v2, p3

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 227
    .local v0, "days":J
    add-long v2, p1, v0

    return-wide v2
.end method

.method private isAvailable(Lcom/android/settings_exlib/drawer/Tile;)Z
    .locals 3
    .param p1, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 149
    iget-object v1, p1, Lcom/android/settings_exlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.android.settings_ex.require_feature"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "featureRequired":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/settings_exlib/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 153
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isDismissed(Lcom/android/settings_exlib/drawer/Tile;)Z
    .locals 14
    .param p1, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 195
    iget-object v5, p1, Lcom/android/settings_exlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "com.android.settings_ex.dismiss"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 196
    .local v2, "dismissObj":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 197
    return v12

    .line 199
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "dismissControl":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "keyBase":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_setup_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_setup_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 202
    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    :cond_1
    iget-object v5, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_is_dismissed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 209
    return v12

    .line 211
    :cond_2
    iget-object v5, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_dismiss_index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 212
    .local v3, "index":I
    invoke-direct {p0, v1}, Lcom/android/settings_exlib/SuggestionParser;->parseDismissString(Ljava/lang/String;)[I

    move-result-object v5

    aget v0, v5, v3

    .line 213
    .local v0, "currentDismiss":I
    iget-object v5, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_setup_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct {p0, v8, v9, v0}, Lcom/android/settings_exlib/SuggestionParser;->getEndTime(JI)J

    move-result-wide v6

    .line 214
    .local v6, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-ltz v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_is_dismissed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_dismiss_index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    .line 216
    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return v12

    .line 222
    :cond_3
    return v13
.end method

.method private parseDismissString(Ljava/lang/String;)[I
    .locals 4
    .param p1, "dismissControl"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "dismissStrs":[Ljava/lang/String;
    array-length v3, v0

    new-array v1, v3, [I

    .line 233
    .local v1, "dismisses":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 234
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-object v1
.end method

.method private readSuggestions(Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;Ljava/util/List;)V
    .locals 13
    .param p1, "category"    # Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/Tile;>;"
    const/4 v4, 0x0

    .line 115
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    .line 116
    .local v8, "countBefore":I
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v0, p1, Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p1, Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/SuggestionParser;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 122
    iget-object v3, p0, Lcom/android/settings_exlib/SuggestionParser;->addCache:Landroid/util/ArrayMap;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p2

    .line 121
    invoke-static/range {v0 .. v7}, Lcom/android/settings_exlib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 123
    move v9, v8

    .local v9, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 124
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/Tile;

    invoke-direct {p0, v0}, Lcom/android/settings_exlib/SuggestionParser;->isAvailable(Lcom/android/settings_exlib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/Tile;

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/SuggestionParser;->isSupported(Lcom/android/settings_exlib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/Tile;

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/SuggestionParser;->satisfiesRequiredAccount(Lcom/android/settings_exlib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/Tile;

    invoke-direct {p0, v0}, Lcom/android/settings_exlib/SuggestionParser;->isDismissed(Lcom/android/settings_exlib/drawer/Tile;)Z

    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 128
    :cond_1
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-interface {p2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v9, v10

    .line 123
    .end local v10    # "i":I
    .restart local v9    # "i":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 131
    :cond_3
    iget-boolean v0, p1, Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;->multiple:Z

    if-nez v0, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v8, 0x1

    if-le v0, v1, :cond_6

    .line 134
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_exlib/drawer/Tile;

    .line 135
    .local v11, "item":Lcom/android/settings_exlib/drawer/Tile;
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_5

    .line 136
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_exlib/drawer/Tile;

    .line 137
    .local v12, "last":Lcom/android/settings_exlib/drawer/Tile;
    iget v0, v12, Lcom/android/settings_exlib/drawer/Tile;->priority:I

    iget v1, v11, Lcom/android/settings_exlib/drawer/Tile;->priority:I

    if-le v0, v1, :cond_4

    .line 138
    move-object v11, v12

    goto :goto_1

    .line 142
    .end local v12    # "last":Lcom/android/settings_exlib/drawer/Tile;
    :cond_5
    iget-object v0, p1, Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/SuggestionParser;->isCategoryDone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    invoke-interface {p2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v11    # "item":Lcom/android/settings_exlib/drawer/Tile;
    :cond_6
    return-void
.end method


# virtual methods
.method public dismissSuggestion(Lcom/android/settings_exlib/drawer/Tile;)Z
    .locals 8
    .param p1, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    iget-object v3, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "keyBase":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_dismiss_index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, "index":I
    iget-object v3, p1, Lcom/android/settings_exlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.settings_ex.dismiss"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "dismissControl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings_exlib/SuggestionParser;->parseDismissString(Ljava/lang/String;)[I

    move-result-object v3

    array-length v3, v3

    if-ne v3, v1, :cond_1

    .line 106
    :cond_0
    return v7

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/android/settings_exlib/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_is_dismissed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return v6
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 4
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
    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/Tile;>;"
    iget-object v3, p0, Lcom/android/settings_exlib/SuggestionParser;->mSuggestionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/settings_exlib/SuggestionParser;->mSuggestionList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;

    invoke-direct {p0, v3, v2}, Lcom/android/settings_exlib/SuggestionParser;->readSuggestions(Lcom/android/settings_exlib/SuggestionParser$SuggestionCategory;Ljava/util/List;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v2
.end method

.method public isCategoryDone(Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suggested.completed_category."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_exlib/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupported(Lcom/android/settings_exlib/drawer/Tile;)Z
    .locals 8
    .param p1, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    const/4 v7, 0x0

    .line 167
    iget-object v4, p1, Lcom/android/settings_exlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings_ex.is_supported"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 169
    .local v2, "isSupportedResource":I
    :try_start_0
    iget-object v4, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v4, :cond_0

    .line 170
    return v7

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/android/settings_exlib/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 173
    iget-object v5, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 172
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v3

    .line 174
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "SuggestionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find resources for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    return v7

    .line 175
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "SuggestionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find resources for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v7
.end method

.method public markCategoryDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suggested.completed_category."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_exlib/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    return-void
.end method

.method public satisfiesRequiredAccount(Lcom/android/settings_exlib/drawer/Tile;)Z
    .locals 7
    .param p1, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v5, p1, Lcom/android/settings_exlib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.android.settings_ex.require_account"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "requiredAccountType":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 159
    return v3

    .line 161
    :cond_0
    iget-object v5, p0, Lcom/android/settings_exlib/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 162
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 163
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v5, v1

    if-lez v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method
