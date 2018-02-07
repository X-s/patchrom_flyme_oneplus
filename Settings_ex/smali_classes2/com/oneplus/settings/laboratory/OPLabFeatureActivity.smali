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
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method private gotoDetailPage(Lcom/oneplus/settings/laboratory/OPLabPluginModel;)V
    .locals 3
    .param p1, "labPluginModel"    # Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ONEPLUS_LAB_FEATURE_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "oneplus_lab_feature_title"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "oneplus_lab_feature_Summary"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "oneplus_lab_feature_key"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method private initData(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Handler;)V

    .line 84
    .local v0, "initRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public fetchLockedAppListByActivityInfo()V
    .locals 13

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 145
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.android.ONEPLUS_LAB_PLUGIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    const/16 v12, 0x80

    .line 143
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 147
    .local v8, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 148
    return-void

    .line 150
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

    .line 151
    .local v6, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 152
    const-string/jumbo v11, "oneplus_lab_package_name"

    .line 151
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "oneplus_lab_package_name":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 154
    const-string/jumbo v11, "oneplus_lab_feature_title"

    .line 153
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "oneplus_lab_feature_title":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 156
    const-string/jumbo v11, "oneplus_lab_feature_summary"

    .line 155
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "oneplus_lab_feature_summary":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 158
    const-string/jumbo v11, "oneplus_lab_feature_toggle_key"

    .line 157
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "oneplus_lab_feature_toggle_key":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 162
    .local v9, "uid":I
    new-instance v5, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-direct {v5}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;-><init>()V

    .line 163
    .local v5, "pluginModel":Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    invoke-virtual {v5, v4}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setPackageName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5, v2}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v5, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5, v3}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    .line 167
    iget-object v10, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
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

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PluginDemo"

    const-string/jumbo v11, "some unknown error happened."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public fetchLockedAppListByPackageInfo()V
    .locals 26

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 105
    .local v8, "curtime":J
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x80

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v21

    .line 106
    .local v21, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    .line 112
    .local v19, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    .line 113
    .local v17, "metaData":Landroid/os/Bundle;
    if-eqz v17, :cond_1

    const-string/jumbo v23, "oneplus_lab_feature"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 114
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 116
    .local v6, "context":Landroid/content/Context;
    const-string/jumbo v23, "oneplus_lab_feature"

    .line 115
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "oneplus_lab_feature":Ljava/lang/String;
    const-string/jumbo v23, ";"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "featureColume":[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 119
    aget-object v23, v10, v16

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "columeKey":[Ljava/lang/String;
    array-length v5, v4

    .line 121
    .local v5, "columrKeyLength":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v5, v0, :cond_4

    const/16 v23, 0x0

    aget-object v14, v4, v23

    .line 122
    .local v14, "featureTitle":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string/jumbo v24, "string"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 123
    .local v15, "featureTitleId":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-le v5, v0, :cond_5

    const/16 v23, 0x1

    aget-object v12, v4, v23

    .line 124
    .local v12, "featureSummary":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string/jumbo v24, "string"

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 125
    .local v13, "featureSummaryId":I
    const/16 v23, 0x3

    move/from16 v0, v23

    if-lt v5, v0, :cond_6

    const/16 v23, 0x2

    aget-object v11, v4, v23

    .line 126
    .local v11, "featureKey":Ljava/lang/String;
    :goto_3
    new-instance v22, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-direct/range {v22 .. v22}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;-><init>()V

    .line 127
    .local v22, "pluginModel":Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    if-eqz v15, :cond_2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .end local v14    # "featureTitle":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    .line 128
    if-eqz v13, :cond_3

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "featureSummary":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 121
    .end local v11    # "featureKey":Ljava/lang/String;
    .end local v13    # "featureSummaryId":I
    .end local v15    # "featureTitleId":I
    .end local v22    # "pluginModel":Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    :cond_4
    const-string/jumbo v14, ""

    .restart local v14    # "featureTitle":Ljava/lang/String;
    goto/16 :goto_1

    .line 123
    .restart local v15    # "featureTitleId":I
    :cond_5
    const-string/jumbo v12, ""

    .restart local v12    # "featureSummary":Ljava/lang/String;
    goto :goto_2

    .line 125
    .restart local v13    # "featureSummaryId":I
    :cond_6
    const-string/jumbo v11, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v11    # "featureKey":Ljava/lang/String;
    goto :goto_3

    .line 135
    .end local v4    # "columeKey":[Ljava/lang/String;
    .end local v5    # "columrKeyLength":I
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "curtime":J
    .end local v10    # "featureColume":[Ljava/lang/String;
    .end local v11    # "featureKey":Ljava/lang/String;
    .end local v12    # "featureSummary":Ljava/lang/String;
    .end local v13    # "featureSummaryId":I
    .end local v14    # "featureTitle":Ljava/lang/String;
    .end local v15    # "featureTitleId":I
    .end local v16    # "i":I
    .end local v17    # "metaData":Landroid/os/Bundle;
    .end local v18    # "oneplus_lab_feature":Ljava/lang/String;
    .end local v19    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "packageInfo$iterator":Ljava/util/Iterator;
    .end local v21    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v7

    .line 136
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "PluginDemo"

    const-string/jumbo v24, "some unknown error happened."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0400e7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f11021c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    .line 57
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->initData(Landroid/os/Handler;)V

    .line 53
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
    .line 91
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->getItem(I)Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->gotoDetailPage(Lcom/oneplus/settings/laboratory/OPLabPluginModel;)V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->finish()V

    .line 68
    const/4 v0, 0x1

    return v0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
