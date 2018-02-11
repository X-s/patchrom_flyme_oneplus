.class public abstract Lcom/android/settings_ex/applications/ProcessStatsBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ProcessStatsBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field protected static final ARG_DURATION_INDEX:Ljava/lang/String; = "duration_index"

.field protected static final ARG_TRANSFER_STATS:Ljava/lang/String; = "transfer_stats"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final DURATION_QUANTUM:J

.field protected static final NUM_DURATIONS:I = 0x4

.field protected static sDurationLabels:[I

.field protected static sDurations:[J


# instance fields
.field protected mDurationIndex:I

.field private mFilterAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mSpinnerHeader:Landroid/view/ViewGroup;

.field protected mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    .line 47
    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 49
    sget-wide v2, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v6

    const-wide/32 v4, 0xa4cb80

    sub-long v2, v4, v2

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    sget-wide v2, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v6

    const-wide/32 v4, 0x1499700

    sub-long v2, v4, v2

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 50
    sget-wide v2, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v6

    const-wide/32 v4, 0x2932e00

    sub-long v2, v4, v2

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    sget-wide v2, Lcom/android/settings_ex/applications/ProcessStatsBase;->DURATION_QUANTUM:J

    div-long/2addr v2, v6

    const-wide/32 v4, 0x5265c00

    sub-long v2, v4, v2

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    .line 48
    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    .line 53
    const v0, 0x7f0e0bd5

    const v1, 0x7f0e0bd6

    .line 54
    const v2, 0x7f0e0bd7

    const v3, 0x7f0e0bd8

    .line 52
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurationLabels:[I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static launchMemoryDetail(Lcom/android/settings_ex/SettingsActivity;Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;Z)V
    .locals 12
    .param p0, "activity"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "memInfo"    # Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    .param p2, "entry"    # Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .param p3, "includeAppInfo"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 137
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "package_entry"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    const-string/jumbo v0, "weight_to_ram"

    iget-wide v8, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->weightToRam:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 140
    const-string/jumbo v0, "total_time"

    iget-wide v8, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->memTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    const-string/jumbo v0, "max_memory_usage"

    .line 142
    iget-wide v8, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v10, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v8, v10

    .line 141
    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 143
    const-string/jumbo v0, "total_scale"

    iget-wide v8, p1, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->totalScale:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 144
    const-string/jumbo v1, "hideInfoButton"

    if-eqz p3, :cond_0

    move v0, v6

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const-class v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 146
    const v3, 0x7f0e0f8e

    move-object v0, p0

    move-object v5, v4

    .line 145
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 136
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    new-instance v3, Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez p1, :cond_0

    .line 70
    if-eqz v0, :cond_1

    const-string/jumbo v1, "transfer_stats"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 69
    :goto_0
    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    .line 72
    if-eqz p1, :cond_2

    .line 73
    const-string/jumbo v1, "duration_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    :goto_1
    iput v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    if-eqz p1, :cond_4

    .line 76
    const-string/jumbo v3, "duration"

    sget-object v4, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v4, v4, v2

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 75
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsData;->setDuration(J)V

    .line 65
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 70
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v1, "duration_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1

    .line 76
    :cond_4
    sget-object v3, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v3, v2

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ProcStatsData;->xferStats()V

    .line 94
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 122
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    sget-object v1, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v1, p3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsData;->setDuration(J)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->refreshUi()V

    .line 121
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcStatsData;->refreshStats(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->refreshUi()V

    .line 87
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    const-string/jumbo v0, "duration"

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ProcStatsData;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 83
    const-string/jumbo v0, "duration_index"

    iget v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    const v2, 0x7f1100af

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mSpinnerHeader:Landroid/view/ViewGroup;

    const v2, 0x7f1100ae

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 110
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04007c

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/android/settings_ex/applications/ProcessStatsBase;->sDurationLabels:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ProcessStatsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mDurationIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsBase;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    return-void
.end method

.method public abstract refreshUi()V
.end method
