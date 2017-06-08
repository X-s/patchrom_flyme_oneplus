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
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    .line 58
    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v1, 0x7f12018a

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mMemStatus:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v1, 0x7f12018b

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mColors:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 62
    const-string v0, "performance"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mPerformance:Landroid/preference/Preference;

    .line 63
    const-string v0, "total_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mTotalMemory:Landroid/preference/Preference;

    .line 64
    const-string v0, "average_used"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAverageUsed:Landroid/preference/Preference;

    .line 65
    const-string v0, "free"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mFree:Landroid/preference/Preference;

    .line 66
    const-string v0, "apps_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 119
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "transfer_stats"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string v0, "duration_index"

    iget v1, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mDurationIndex:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ProcStatsData;->xferStats()V

    .line 123
    const-class v0, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0d43

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v6

    .line 127
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_0
    return v4
.end method

.method public refreshUi()V
    .locals 29

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 74
    .local v4, "context":Landroid/content/Context;
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v18, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v23

    const v24, 0x1010435

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v18

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    .line 77
    .local v9, "memColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mColors:Lcom/android/settings_ex/applications/LinearColorBar;

    move-object/from16 v23, v0

    const v24, 0x7f0e003d

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->getColor(I)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v9, v9, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setColors(III)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v10

    .line 81
    .local v10, "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    iget-wide v0, v10, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realUsedRam:D

    move-wide/from16 v20, v0

    .line 82
    .local v20, "usedRam":D
    iget-wide v0, v10, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realTotalRam:D

    move-wide/from16 v16, v0

    .line 83
    .local v16, "totalRam":D
    iget-wide v6, v10, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 84
    .local v6, "freeRam":D
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v22

    .line 86
    .local v22, "usedResult":Landroid/text/format/Formatter$BytesResult;
    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 87
    .local v15, "totalString":Ljava/lang/String;
    double-to-long v0, v6

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "freeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0063

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v12

    .line 90
    .local v12, "memStatesStr":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemState()I

    move-result v11

    .line 91
    .local v11, "memState":I
    if-ltz v11, :cond_0

    array-length v0, v12

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ge v11, v0, :cond_0

    .line 92
    aget-object v13, v12, v11

    .line 96
    .local v13, "memString":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mMemStatus:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const v24, 0x7f0c064a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    add-double v24, v6, v20

    div-double v24, v20, v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v19, v0

    .line 99
    .local v19, "usedRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mColors:Lcom/android/settings_ex/applications/LinearColorBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v25, v19

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mPerformance:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mTotalMemory:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAverageUsed:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Lcom/android/settings_ex/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mFree:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    sget-object v23, Lcom/android/settings_ex/applications/ProcessStatsSummary;->sDurationLabels:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mDurationIndex:I

    move/from16 v24, v0

    aget v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "durationString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v14

    .line 107
    .local v14, "numApps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsSummary;->mAppListPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f130013

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v5, v26, v27

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    .line 94
    .end local v5    # "durationString":Ljava/lang/String;
    .end local v13    # "memString":Ljava/lang/CharSequence;
    .end local v14    # "numApps":I
    .end local v19    # "usedRatio":F
    :cond_0
    array-length v0, v12

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-object v13, v12, v23

    .restart local v13    # "memString":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method
