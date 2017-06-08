.class public Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings_ex/net/UidDetailProvider;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/settings_ex/net/UidDetailProvider;I)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "provider"    # Lcom/android/settings_ex/net/UidDetailProvider;
    .param p3, "insetSide"    # I

    .prologue
    .line 2067
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2064
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 2068
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 2069
    iput p3, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 2070
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    .line 2071
    return-void
.end method

.method private accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V
    .locals 8
    .param p1, "collapseKey"    # I
    .param p3, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p4, "itemCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/DataUsageSummary$AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2168
    .local p2, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings_ex/DataUsageSummary$AppItem;>;"
    iget v1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2169
    .local v1, "uid":I
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 2170
    .local v0, "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    if-nez v0, :cond_0

    .line 2171
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .end local v0    # "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/DataUsageSummary$AppItem;-><init>(I)V

    .line 2172
    .restart local v0    # "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    iput p4, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->category:I

    .line 2173
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    iget v2, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2176
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary$AppItem;->addUid(I)V

    .line 2177
    iget-wide v2, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    .line 2178
    iget-wide v2, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mLargest:J

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2179
    iget-wide v2, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    iput-wide v2, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 2181
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 2221
    const/4 v0, 0x0

    return v0
.end method

.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 22
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 2078
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 2080
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 2081
    .local v6, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 2082
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 2084
    .local v11, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings_ex/DataUsageSummary$AppItem;>;"
    const/4 v7, 0x0

    .line 2085
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v15

    .line 2086
    .local v15, "size":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v15, :cond_7

    .line 2087
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 2090
    iget v0, v7, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v17, v0

    .line 2094
    .local v17, "uid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 2095
    .local v18, "userId":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2096
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2097
    move/from16 v0, v18

    if-eq v0, v6, :cond_0

    .line 2099
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v12

    .line 2100
    .local v12, "managedKey":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v11, v7, v1}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    .line 2104
    .end local v12    # "managedKey":I
    :cond_0
    move/from16 v5, v17

    .line 2105
    .local v5, "collapseKey":I
    const/4 v4, 0x2

    .line 2125
    .local v4, "category":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v7, v4}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    .line 2086
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2085
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    .end local v8    # "i":I
    .end local v15    # "size":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 2108
    .restart local v8    # "i":I
    .restart local v15    # "size":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 2109
    .local v9, "info":Landroid/content/pm/UserInfo;
    if-nez v9, :cond_3

    .line 2110
    const/4 v5, -0x4

    .line 2111
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_2

    .line 2114
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_3
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v5

    .line 2115
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x0

    .restart local v4    # "category":I
    goto :goto_2

    .line 2118
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    .end local v9    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    const/16 v19, -0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, -0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 2119
    :cond_5
    move/from16 v5, v17

    .line 2120
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_2

    .line 2122
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_6
    const/16 v5, 0x3e8

    .line 2123
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_2

    .line 2128
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_7
    move-object/from16 v0, p2

    array-length v14, v0

    .line 2129
    .local v14, "restrictedUidsMax":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v14, :cond_a

    .line 2130
    aget v17, p2, v8

    .line 2132
    .restart local v17    # "uid":I
    new-instance v19, Landroid/os/UserHandle;

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 2129
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2136
    :cond_8
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 2137
    .local v10, "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    if-nez v10, :cond_9

    .line 2138
    new-instance v10, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .end local v10    # "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    move/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/android/settings_ex/DataUsageSummary$AppItem;-><init>(I)V

    .line 2139
    .restart local v10    # "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2141
    iget v0, v10, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2143
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/settings_ex/DataUsageSummary$AppItem;->restricted:Z

    goto :goto_4

    .line 2146
    .end local v10    # "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .end local v17    # "uid":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_b

    .line 2147
    new-instance v16, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings_ex/DataUsageSummary$AppItem;-><init>()V

    .line 2148
    .local v16, "title":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->category:I

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    .end local v16    # "title":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 2154
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 2211
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 2212
    .local v0, "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    iget v2, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->category:I

    if-ne v2, v1, :cond_0

    .line 2215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    .line 2234
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 2235
    .local v2, "item":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2236
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->getItemViewType(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 2237
    if-nez p2, :cond_0

    .line 2238
    invoke-static {v1, p3}, Lcom/android/settings_ex/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2241
    :cond_0
    const v7, 0x1020016

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2242
    .local v6, "title":Landroid/widget/TextView;
    const v7, 0x7f0c0aa3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2276
    .end local v6    # "title":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 2245
    :cond_1
    if-nez p2, :cond_2

    .line 2246
    const v7, 0x7f04004a

    invoke-virtual {v1, v7, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2247
    const v8, 0x7f04013e

    const v7, 0x1020018

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2250
    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v7, :cond_2

    .line 2251
    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v8, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v7, v3, v8, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2255
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2257
    .local v0, "context":Landroid/content/Context;
    const v7, 0x1020010

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2258
    .local v5, "summary":Landroid/widget/TextView;
    const v7, 0x102000d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 2262
    .local v4, "progress":Landroid/widget/ProgressBar;
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-static {v7, v2, p2}, Lcom/android/settings_ex/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settings_ex/net/UidDetailProvider;Lcom/android/settings_ex/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 2264
    iget-boolean v7, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v7, :cond_4

    iget-wide v8, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    cmp-long v7, v8, v10

    if-gtz v7, :cond_4

    .line 2265
    const v7, 0x7f0c0abe

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2266
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2272
    :goto_1
    iget-wide v8, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mLargest:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    iget-wide v8, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v8, v10

    long-to-int v3, v8

    .line 2273
    .local v3, "percentTotal":I
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 2268
    .end local v3    # "percentTotal":I
    :cond_4
    iget-wide v8, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2269
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2203
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 2227
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
