.class public Lcom/android/settings_ex/applications/ProcessStatsDetail;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ProcessStatsDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ProcessStatsDetail$1;,
        Lcom/android/settings_ex/applications/ProcessStatsDetail$2;,
        Lcom/android/settings_ex/applications/ProcessStatsDetail$3;,
        Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    }
.end annotation


# static fields
.field public static final EXTRA_MAX_MEMORY_USAGE:Ljava/lang/String; = "max_memory_usage"

.field public static final EXTRA_PACKAGE_ENTRY:Ljava/lang/String; = "package_entry"

.field public static final EXTRA_TOTAL_SCALE:Ljava/lang/String; = "total_scale"

.field public static final EXTRA_TOTAL_TIME:Ljava/lang/String; = "total_time"

.field public static final EXTRA_WEIGHT_TO_RAM:Ljava/lang/String; = "weight_to_ram"

.field private static final KEY_DETAILS_HEADER:Ljava/lang/String; = "status_header"

.field private static final KEY_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final KEY_MAX_USAGE:Ljava/lang/String; = "max_usage"

.field private static final KEY_PROCS:Ljava/lang/String; = "processes"

.field public static final MENU_FORCE_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessStatsDetail"

.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mForceStop:Landroid/view/MenuItem;

.field private mMaxMemoryUsage:D

.field private mOnePercentTime:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

.field private final mServiceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings_ex/CancellablePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalScale:D

.field private mTotalTime:J

.field private mWeightToRam:D


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->stopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    .line 293
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsDetail$2;-><init>()V

    .line 292
    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 305
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsDetail$3;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsDetail$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    .line 58
    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 268
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    return-object p0

    .line 271
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 425
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    if-nez v7, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/applications/ProcStatsEntry;

    iget v7, v7, Lcom/android/settings_ex/applications/ProcStatsEntry;->mUid:I

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_1

    .line 429
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    return-void

    .line 432
    :cond_1
    const/4 v4, 0x0

    .line 433
    .local v4, "isStarted":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 434
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 435
    .local v1, "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v7, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 436
    iget-object v7, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 437
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 438
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 439
    return-void

    .line 442
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 443
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    .line 444
    const/4 v4, 0x1

    .line 435
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 433
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v5    # "j":I
    :cond_5
    if-eqz v4, :cond_6

    .line 451
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 424
    :cond_6
    return-void

    .line 446
    .restart local v1    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .restart local v5    # "j":I
    .restart local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method private createDetails()V
    .locals 22

    .prologue
    .line 176
    const v17, 0x7f08000c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->addPreferencesFromResource(I)V

    .line 178
    const-string/jumbo v17, "processes"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->fillProcessesSection()V

    .line 181
    const-string/jumbo v17, "status_header"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings_ex/SummaryPreference;

    .line 184
    .local v15, "summaryPreference":Lcom/android/settings_ex/SummaryPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    move-wide/from16 v20, v0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_0

    const/4 v14, 0x1

    .line 185
    .local v14, "statsForeground":Z
    :goto_0
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-wide/from16 v18, v0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v20, v0

    mul-double v4, v18, v20

    .line 186
    .local v4, "avgRam":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    move-wide/from16 v18, v0

    div-double v18, v4, v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 187
    .local v6, "avgRatio":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v11, v17, v6

    .line 188
    .local v11, "remainingRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 189
    .local v7, "context":Landroid/content/Context;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v6, v0, v11}, Lcom/android/settings_ex/SummaryPreference;->setRatios(FFF)V

    .line 190
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 191
    double-to-long v0, v4

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    .line 190
    invoke-static/range {v17 .. v20}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v16

    .line 192
    .local v16, "usedResult":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/SummaryPreference;->setAmount(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/SummaryPreference;->setUnits(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunDuration:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgDuration:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 196
    .local v8, "duration":J
    long-to-float v0, v8

    move/from16 v17, v0

    .line 197
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    .line 196
    div-float v17, v17, v18

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v18

    .line 196
    invoke-static/range {v17 .. v18}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 198
    .local v10, "frequency":Ljava/lang/CharSequence;
    const-string/jumbo v17, "frequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalScale:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4090000000000000L    # 1024.0

    mul-double v12, v18, v20

    .line 200
    .local v12, "max":D
    const-string/jumbo v17, "max_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v18

    double-to-long v0, v12

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 200
    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .line 184
    .end local v4    # "avgRam":D
    .end local v6    # "avgRatio":F
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "duration":J
    .end local v10    # "frequency":Ljava/lang/CharSequence;
    .end local v11    # "remainingRatio":F
    .end local v12    # "max":D
    .end local v14    # "statsForeground":Z
    .end local v16    # "usedResult":Landroid/text/format/Formatter$BytesResult;
    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 185
    .restart local v14    # "statsForeground":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    move-wide/from16 v18, v0

    goto/16 :goto_1
.end method

.method private doStopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 410
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 408
    return-void
.end method

.method private fillProcessesSection()V
    .locals 18

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v4, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry;>;"
    const/4 v7, 0x0

    .local v7, "ie":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 237
    .local v5, "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const-string/jumbo v13, "os"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 238
    iget-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    iput-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    .line 242
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 240
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getProcessName(Ljava/lang/String;Lcom/android/settings_ex/applications/ProcStatsEntry;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 244
    .end local v5    # "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_1
    sget-object v12, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    invoke-static {v4, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 245
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 246
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 247
    .restart local v5    # "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    new-instance v9, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 248
    .local v9, "processPref":Landroid/support/v7/preference/Preference;
    iget-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 251
    iget-wide v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v14, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBgDuration:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 252
    .local v2, "duration":J
    iget-wide v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v12, v14

    double-to-long v12, v12

    .line 253
    iget-wide v14, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBgWeight:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-long v14, v14

    .line 252
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 254
    .local v10, "memoryUse":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 255
    .local v8, "memoryString":Ljava/lang/String;
    long-to-float v12, v2

    .line 256
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v13, v14

    .line 255
    div-float/2addr v12, v13

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 255
    invoke-static {v12, v13}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 258
    .local v6, "frequency":Ljava/lang/CharSequence;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const v13, 0x7f0e0f32

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 257
    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 261
    .end local v2    # "duration":J
    .end local v5    # "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v6    # "frequency":Ljava/lang/CharSequence;
    .end local v8    # "memoryString":Ljava/lang/String;
    .end local v9    # "processPref":Landroid/support/v7/preference/Preference;
    .end local v10    # "memoryUse":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 232
    :cond_3
    return-void
.end method

.method private fillServicesSection(Lcom/android/settings_ex/applications/ProcStatsEntry;Landroid/support/v7/preference/PreferenceCategory;)V
    .locals 18
    .param p1, "entry"    # Lcom/android/settings_ex/applications/ProcStatsEntry;
    .param p2, "processPref"    # Landroid/support/v7/preference/PreferenceCategory;

    .prologue
    .line 323
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v8, "pkgServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v7, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;>;"
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 326
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 327
    .local v6, "pkg":Ljava/lang/String;
    const/4 v9, 0x0

    .line 328
    .local v9, "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 329
    .local v12, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry$Service;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .end local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    .local v3, "is":I
    :goto_1
    if-ltz v3, :cond_2

    .line 330
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;

    .line 331
    .local v5, "pent":Lcom/android/settings_ex/applications/ProcStatsEntry$Service;
    iget-wide v14, v5, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mDuration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mOnePercentTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    .line 332
    if-nez v9, :cond_0

    .line 333
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;

    .line 334
    .local v9, "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    if-nez v9, :cond_0

    .line 335
    new-instance v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;

    .end local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    invoke-direct {v9}, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;-><init>()V

    .line 336
    .restart local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    :cond_0
    iget-object v13, v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-wide v14, v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;->mDuration:J

    iget-wide v0, v5, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mDuration:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;->mDuration:J

    .line 329
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 325
    .end local v5    # "pent":Lcom/android/settings_ex/applications/ProcStatsEntry$Service;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v3    # "is":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry$Service;>;"
    :cond_3
    sget-object v13, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    invoke-static {v7, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 346
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 347
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;

    iget-object v12, v13, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;->mServices:Ljava/util/ArrayList;

    .line 348
    .restart local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry$Service;>;"
    sget-object v13, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    const/4 v3, 0x0

    .restart local v3    # "is":I
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 350
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;

    .line 351
    .local v10, "service":Lcom/android/settings_ex/applications/ProcStatsEntry$Service;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getLabel(Lcom/android/settings_ex/applications/ProcStatsEntry$Service;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 352
    .local v4, "label":Ljava/lang/CharSequence;
    new-instance v11, Lcom/android/settings_ex/CancellablePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/settings_ex/CancellablePreference;-><init>(Landroid/content/Context;)V

    .line 353
    .local v11, "servicePref":Lcom/android/settings_ex/CancellablePreference;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/CancellablePreference;->setSelectable(Z)V

    .line 354
    invoke-virtual {v11, v4}, Lcom/android/settings_ex/CancellablePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    iget-wide v14, v10, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mDuration:J

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v14, v14

    div-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 355
    invoke-static {v13, v14}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/CancellablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v10, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v0, v10, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 346
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v10    # "service":Lcom/android/settings_ex/applications/ProcStatsEntry$Service;
    .end local v11    # "servicePref":Lcom/android/settings_ex/CancellablePreference;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 322
    .end local v3    # "is":I
    .end local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry$Service;>;"
    :cond_5
    return-void
.end method

.method private getLabel(Lcom/android/settings_ex/applications/ProcStatsEntry$Service;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "service"    # Lcom/android/settings_ex/applications/ProcStatsEntry$Service;

    .prologue
    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 367
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p1, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 366
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 368
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget v4, v2, Landroid/content/pm/ServiceInfo;->labelRes:I

    if-eqz v4, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 371
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 373
    :cond_0
    iget-object v1, p1, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 374
    .local v1, "label":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 375
    .local v3, "tail":I
    if-ltz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 376
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    :cond_1
    return-object v1
.end method

.method private static getProcessName(Ljava/lang/String;Lcom/android/settings_ex/applications/ProcStatsEntry;)Ljava/lang/String;
    .locals 4
    .param p0, "appLabel"    # Ljava/lang/String;
    .param p1, "entry"    # Lcom/android/settings_ex/applications/ProcStatsEntry;

    .prologue
    .line 275
    iget-object v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 276
    .local v0, "processName":Ljava/lang/String;
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 279
    :cond_0
    iget-object v2, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 281
    return-object p0

    .line 283
    :cond_1
    iget-object v2, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 284
    .local v1, "start":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 287
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 289
    .end local v1    # "start":I
    :cond_3
    return-object v0
.end method

.method private killProcesses()V
    .locals 6

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 415
    const-string/jumbo v5, "activity"

    .line 414
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 416
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 417
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 418
    .local v1, "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 419
    iget-object v4, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 416
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method private showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 396
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    const v1, 0x7f0e0a5e

    .line 396
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 398
    const v1, 0x7f0e0a5f

    .line 396
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;-><init>(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0e0a06

    .line 396
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 404
    const v1, 0x7f0e0a07

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 395
    return-void
.end method

.method private stopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 384
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    return-void

    .line 388
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "ProcessStatsDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    return-void

    .line 392
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private updateRunningServices()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    check-cast v1, Landroid/app/ActivityManager;

    .line 144
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 147
    .local v5, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 148
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 149
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/CancellablePreference;

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/CancellablePreference;->setCancellable(Z)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 154
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 155
    .local v4, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v7, :cond_2

    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v7, :cond_2

    .line 153
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_2
    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 161
    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 162
    .local v6, "service":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/CancellablePreference;

    .line 163
    .local v3, "pref":Lcom/android/settings_ex/CancellablePreference;
    if-eqz v3, :cond_1

    .line 164
    new-instance v7, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;

    invoke-direct {v7, p0, v6}, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;-><init>(Lcom/android/settings_ex/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/CancellablePreference;->setOnCancelListener(Lcom/android/settings_ex/CancellablePreference$OnCancelListener;)V

    .line 170
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/CancellablePreference;->setCancellable(Z)V

    goto :goto_2

    .line 140
    .end local v3    # "pref":Lcom/android/settings_ex/CancellablePreference;
    .end local v4    # "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v6    # "service":Landroid/content/ComponentName;
    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x15

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package_entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 103
    const-string/jumbo v1, "weight_to_ram"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mWeightToRam:D

    .line 104
    const-string/jumbo v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    .line 105
    const-string/jumbo v1, "max_memory_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    .line 106
    const-string/jumbo v1, "total_scale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalScale:D

    .line 107
    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mOnePercentTime:J

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->createDetails()V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->setHasOptionsMenu(Z)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 206
    const/4 v0, 0x1

    const v1, 0x7f0e09d8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    .line 207
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->checkForceStop()V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    const/4 v0, 0x0

    return v0

    .line 214
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->killProcesses()V

    .line 215
    const/4 v0, 0x1

    return v0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 136
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->checkForceStop()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 133
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->finish()V

    .line 120
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 122
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 115
    return-void

    .line 123
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method
