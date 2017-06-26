.class public Lcom/android/settings_ex/applications/ProcessStatsSummary;
.super Lcom/android/settings_ex/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_APP_LIST:Ljava/lang/String; = "apps_list"

.field private static final KEY_AVERAGY_USED:Ljava/lang/String; = "average_used"

.field private static final KEY_FREE:Ljava/lang/String; = "free"

.field private static final KEY_PERFORMANCE:Ljava/lang/String; = "performance"

.field private static final KEY_STATUS_HEADER:Ljava/lang/String; = "status_header"

.field private static final KEY_TOTAL_MEMORY:Ljava/lang/String; = "total_memory"


# instance fields
.field private mAppListPreference:Landroid/preference/Preference;

.field private mAverageUsed:Landroid/preference/Preference;

.field private mColors:Lcom/android/settings_ex/applications/LinearColorBar;

.field private mFree:Landroid/preference/Preference;

.field private mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

.field private mMemStatus:Landroid/widget/TextView;

.field private mPerformance:Landroid/preference/Preference;

.field private mTotalMemory:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    .line 59
    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v1, 0x7f1201b5

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mMemStatus:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v1, 0x7f1201b6

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mColors:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 63
    const-string v0, "performance"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mPerformance:Landroid/preference/Preference;

    .line 64
    const-string v0, "total_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mTotalMemory:Landroid/preference/Preference;

    .line 65
    const-string v0, "average_used"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAverageUsed:Landroid/preference/Preference;

    .line 66
    const-string v0, "free"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mFree:Landroid/preference/Preference;

    .line 67
    const-string v0, "apps_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 148
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "transfer_stats"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    const-string v0, "duration_index"

    iget v1, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mDurationIndex:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ProcStatsData;->xferStats()V

    .line 152
    const-class v0, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0d6d

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v6

    .line 156
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_0
    return v4
.end method

.method public refreshUi()V
    .locals 32

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 80
    .local v4, "context":Landroid/content/Context;
    const v27, 0x7f0e0079

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/Context;->getColor(I)I

    move-result v10

    .line 81
    .local v10, "memColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mColors:Lcom/android/settings_ex/applications/LinearColorBar;

    move-object/from16 v27, v0

    const v28, 0x7f0e0073

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/content/Context;->getColor(I)I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v10, v10, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setColors(III)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v11

    .line 85
    .local v11, "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    iget-wide v0, v11, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realUsedRam:D

    move-wide/from16 v22, v0

    .line 86
    .local v22, "usedRam":D
    iget-wide v0, v11, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realTotalRam:D

    move-wide/from16 v20, v0

    .line 87
    .local v20, "totalRam":D
    iget-wide v8, v11, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 95
    .local v8, "freeRam":D
    invoke-static {}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getTotalMemory()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getDDRMemorySize(J)D

    move-result-wide v28

    const-wide/high16 v30, 0x4090000000000000L    # 1024.0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4090000000000000L    # 1024.0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4090000000000000L    # 1024.0

    mul-double v16, v28, v30

    .line 96
    .local v16, "oneplusTotalRam":D
    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 97
    .local v19, "totalString":Ljava/lang/String;
    double-to-long v0, v8

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "freeString":Ljava/lang/String;
    sub-double v28, v16, v8

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    .line 99
    .local v26, "usedString":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sub-double v28, v16, v8

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x1

    invoke-static/range {v27 .. v30}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v25

    .line 103
    .local v25, "usedResult":Landroid/text/format/Formatter$BytesResult;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0064

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 104
    .local v13, "memStatesStr":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemState()I

    move-result v12

    .line 105
    .local v12, "memState":I
    if-ltz v12, :cond_0

    array-length v0, v13

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v12, v0, :cond_0

    .line 106
    aget-object v14, v13, v12

    .line 115
    .local v14, "memString":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mMemStatus:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    sub-double v28, v16, v8

    div-double v28, v28, v16

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v24, v0

    .line 118
    .local v24, "usedRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mColors:Lcom/android/settings_ex/applications/LinearColorBar;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, v24

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mPerformance:Landroid/preference/Preference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mTotalMemory:Landroid/preference/Preference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAverageUsed:Landroid/preference/Preference;

    move-object/from16 v27, v0

    sub-double v28, v16, v8

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v28 .. v31}, Lcom/android/settings_ex/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mFree:Landroid/preference/Preference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    sget-object v27, Lcom/android/settings_ex/applications/ProcessStatsSummary;->sDurationLabels:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mDurationIndex:I

    move/from16 v28, v0

    aget v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "durationString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v15

    .line 132
    .local v15, "numApps":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f130011

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    aput-object v5, v29, v30

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 133
    .local v18, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v18    # "summary":Ljava/lang/String;
    :goto_1
    return-void

    .line 108
    .end local v5    # "durationString":Ljava/lang/String;
    .end local v14    # "memString":Ljava/lang/CharSequence;
    .end local v15    # "numApps":I
    .end local v24    # "usedRatio":F
    :cond_0
    array-length v0, v13

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    aget-object v14, v13, v27

    .restart local v14    # "memString":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 134
    .restart local v5    # "durationString":Ljava/lang/String;
    .restart local v15    # "numApps":I
    .restart local v24    # "usedRatio":F
    :catch_0
    move-exception v6

    .line 135
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    move-object/from16 v27, v0

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    const-string v27, "ProcessStatsSummary"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ddj durationString="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
