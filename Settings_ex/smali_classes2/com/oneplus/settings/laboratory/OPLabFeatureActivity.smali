.class public Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;
.super Landroid/app/Activity;
.source "OPLabFeatureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;
    }
.end annotation


# static fields
.field public static final DATA_LOAD_COMPLETED:I = 0x0

.field private static final ONEPLUS_LAB_FEATURE_KEY:Ljava/lang/String; = "oneplus_lab_feature_key"

.field private static final ONEPLUS_LAB_FEATURE_SUMMARY:Ljava/lang/String; = "oneplus_lab_feature_Summary"

.field private static final ONEPLUS_LAB_FEATURE_TITLE:Ljava/lang/String; = "oneplus_lab_feature_title"

.field private static final ONEPLUS_LAB_FEATURE_TOGGLE_COUNT:Ljava/lang/String; = "oneplus_lab_feature_toggle_count"

.field private static final ONEPLUS_LAB_FEATURE_TOGGLE_NAMES:Ljava/lang/String; = "oneplus_lab_feature_toggle_names"

.field private static final ONEPLUS_NFC_SECURITY_MODULE_KEY:Ljava/lang/String; = "oneplus_nfc_security_module_key"

.field private static final PLUGIN_ACTION:Ljava/lang/String; = "com.android.ONEPLUS_LAB_PLUGIN"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPluginData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginList:Landroid/widget/ListView;

.field private mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method private gotoDetailPage(Lcom/oneplus/settings/laboratory/OPLabPluginModel;)V
    .locals 3
    .param p1, "labPluginModel"    # Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ONEPLUS_LAB_FEATURE_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "oneplus_lab_feature_toggle_count"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getToggleCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "oneplus_lab_feature_toggle_names"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getMultiToggleName()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "oneplus_lab_feature_title"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "oneplus_lab_feature_Summary"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "oneplus_lab_feature_key"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method private initData(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 87
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Handler;)V

    .line 94
    .local v0, "initRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method


# virtual methods
.method public fetchLockedAppListByActivityInfo()V
    .locals 13

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 182
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.android.ONEPLUS_LAB_PLUGIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    const/16 v12, 0x80

    .line 180
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 184
    .local v8, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "reInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 188
    .local v6, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 189
    const-string/jumbo v11, "oneplus_lab_package_name"

    .line 188
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "oneplus_lab_package_name":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 191
    const-string/jumbo v11, "oneplus_lab_feature_title"

    .line 190
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "oneplus_lab_feature_title":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 193
    const-string/jumbo v11, "oneplus_lab_feature_summary"

    .line 192
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "oneplus_lab_feature_summary":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 195
    const-string/jumbo v11, "oneplus_lab_feature_toggle_key"

    .line 194
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "oneplus_lab_feature_toggle_key":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 199
    .local v9, "uid":I
    new-instance v5, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-direct {v5}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;-><init>()V

    .line 200
    .local v5, "pluginModel":Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    invoke-virtual {v5, v4}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setPackageName(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5, v2}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v5, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v5, v3}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    .line 204
    iget-object v10, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v1    # "oneplus_lab_feature_summary":Ljava/lang/String;
    .end local v2    # "oneplus_lab_feature_title":Ljava/lang/String;
    .end local v3    # "oneplus_lab_feature_toggle_key":Ljava/lang/String;
    .end local v4    # "oneplus_lab_package_name":Ljava/lang/String;
    .end local v5    # "pluginModel":Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    .end local v6    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "reInfo$iterator":Ljava/util/Iterator;
    .end local v8    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "uid":I
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PluginDemo"

    const-string/jumbo v11, "some unknown error happened."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public fetchLockedAppListByPackageInfo()V
    .locals 32

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 117
    .local v8, "curtime":J
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const/16 v29, 0x80

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v26

    .line 118
    .local v26, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageInfo;

    .line 124
    .local v24, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v22, v0

    .line 125
    .local v22, "metaData":Landroid/os/Bundle;
    if-eqz v22, :cond_1

    const-string/jumbo v28, "oneplus_lab_feature"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 126
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 128
    .local v6, "context":Landroid/content/Context;
    const-string/jumbo v28, "oneplus_lab_feature"

    .line 127
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 129
    .local v23, "oneplus_lab_feature":Ljava/lang/String;
    const-string/jumbo v28, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, "featureColume":[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v28, v0

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 131
    new-instance v27, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-direct/range {v27 .. v27}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;-><init>()V

    .line 132
    .local v27, "pluginModel":Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    aget-object v28, v10, v20

    const-string/jumbo v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "columeKey":[Ljava/lang/String;
    array-length v5, v4

    .line 134
    .local v5, "columrKeyLength":I
    const/16 v16, 0x2

    .line 136
    .local v16, "featureToggleCount":I
    const/16 v28, 0x3

    move/from16 v0, v28

    if-le v5, v0, :cond_6

    .line 137
    const/16 v28, 0x0

    aget-object v14, v4, v28

    .line 138
    .local v14, "featureTitle":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "string"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 139
    .local v15, "featureTitleId":I
    const/16 v28, 0x1

    aget-object v12, v4, v28

    .line 140
    .local v12, "featureSummary":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "string"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 141
    .local v13, "featureSummaryId":I
    const/16 v28, 0x2

    aget-object v11, v4, v28

    .line 142
    .local v11, "featureKey":Ljava/lang/String;
    const/16 v28, 0x3

    aget-object v28, v4, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 143
    const/16 v28, 0x4

    move/from16 v0, v28

    invoke-static {v4, v0, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    .line 144
    .local v18, "featureToggleNameIds":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 145
    .local v19, "featureToggleNames":[Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 146
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    aget-object v29, v18, v21

    const-string/jumbo v30, "string"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 147
    .local v17, "featureToggleNameId":I
    if-eqz v17, :cond_2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    :goto_2
    aput-object v28, v19, v21

    .line 145
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 147
    :cond_2
    aget-object v28, v18, v21

    goto :goto_2

    .line 149
    .end local v17    # "featureToggleNameId":I
    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .end local v14    # "featureTitle":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    .line 150
    if-eqz v13, :cond_5

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "featureSummary":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setMultiToggleName([Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    .line 163
    .end local v18    # "featureToggleNameIds":[Ljava/lang/String;
    .end local v19    # "featureToggleNames":[Ljava/lang/String;
    .end local v21    # "j":I
    :goto_3
    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isSurportSimNfc(Landroid/content/Context;)Z

    move-result v28

    if-nez v28, :cond_d

    const-string/jumbo v28, "oneplus_nfc_security_module_key"

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 130
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 154
    .end local v11    # "featureKey":Ljava/lang/String;
    .end local v13    # "featureSummaryId":I
    .end local v15    # "featureTitleId":I
    :cond_6
    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v5, v0, :cond_a

    const/16 v28, 0x0

    aget-object v14, v4, v28

    .line 155
    .restart local v14    # "featureTitle":Ljava/lang/String;
    :goto_5
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "string"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 156
    .restart local v15    # "featureTitleId":I
    const/16 v28, 0x2

    move/from16 v0, v28

    if-le v5, v0, :cond_b

    const/16 v28, 0x1

    aget-object v12, v4, v28

    .line 157
    .restart local v12    # "featureSummary":Ljava/lang/String;
    :goto_6
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "string"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 158
    .restart local v13    # "featureSummaryId":I
    const/16 v28, 0x3

    move/from16 v0, v28

    if-lt v5, v0, :cond_c

    const/16 v28, 0x2

    aget-object v11, v4, v28

    .line 159
    .restart local v11    # "featureKey":Ljava/lang/String;
    :goto_7
    if-eqz v15, :cond_7

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .end local v14    # "featureTitle":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    .line 160
    if-eqz v13, :cond_8

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "featureSummary":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 172
    .end local v4    # "columeKey":[Ljava/lang/String;
    .end local v5    # "columrKeyLength":I
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "curtime":J
    .end local v10    # "featureColume":[Ljava/lang/String;
    .end local v11    # "featureKey":Ljava/lang/String;
    .end local v13    # "featureSummaryId":I
    .end local v15    # "featureTitleId":I
    .end local v16    # "featureToggleCount":I
    .end local v20    # "i":I
    .end local v22    # "metaData":Landroid/os/Bundle;
    .end local v23    # "oneplus_lab_feature":Ljava/lang/String;
    .end local v24    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v25    # "packageInfo$iterator":Ljava/util/Iterator;
    .end local v26    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v27    # "pluginModel":Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    :catch_0
    move-exception v7

    .line 173
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v28, "PluginDemo"

    const-string/jumbo v29, "some unknown error happened."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_9
    return-void

    .line 154
    .restart local v4    # "columeKey":[Ljava/lang/String;
    .restart local v5    # "columrKeyLength":I
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "curtime":J
    .restart local v10    # "featureColume":[Ljava/lang/String;
    .restart local v16    # "featureToggleCount":I
    .restart local v20    # "i":I
    .restart local v22    # "metaData":Landroid/os/Bundle;
    .restart local v23    # "oneplus_lab_feature":Ljava/lang/String;
    .restart local v24    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v25    # "packageInfo$iterator":Ljava/util/Iterator;
    .restart local v26    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v27    # "pluginModel":Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    :cond_a
    :try_start_1
    const-string/jumbo v14, ""

    .restart local v14    # "featureTitle":Ljava/lang/String;
    goto :goto_5

    .line 156
    .restart local v15    # "featureTitleId":I
    :cond_b
    const-string/jumbo v12, ""

    .restart local v12    # "featureSummary":Ljava/lang/String;
    goto :goto_6

    .line 158
    .restart local v13    # "featureSummaryId":I
    :cond_c
    const-string/jumbo v11, ""

    .restart local v11    # "featureKey":Ljava/lang/String;
    goto :goto_7

    .line 166
    .end local v12    # "featureSummary":Ljava/lang/String;
    .end local v14    # "featureTitle":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setToggleCount(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0400ef

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f11022b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    .line 67
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->initData(Landroid/os/Handler;)V

    .line 63
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 101
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->getItem(I)Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->gotoDetailPage(Lcom/oneplus/settings/laboratory/OPLabPluginModel;)V

    .line 99
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->finish()V

    .line 78
    const/4 v0, 0x1

    return v0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
