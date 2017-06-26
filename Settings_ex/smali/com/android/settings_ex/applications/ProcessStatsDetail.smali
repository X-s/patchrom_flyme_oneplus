.class public Lcom/android/settings_ex/applications/ProcessStatsDetail;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ProcessStatsDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mForceStop:Landroid/view/MenuItem;

.field private mMaxMemoryUsage:D

.field private mOnePercentTime:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcGroup:Landroid/preference/PreferenceCategory;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    .line 295
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsDetail$3;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsDetail$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 308
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsDetail$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    .line 320
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ProcessStatsDetail;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->stopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ProcessStatsDetail;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 271
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    .end local p0    # "processName":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "processName":Ljava/lang/String;
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

    move-result-object p0

    goto :goto_0
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 428
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    if-nez v6, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/applications/ProcStatsEntry;

    iget v6, v6, Lcom/android/settings_ex/applications/ProcStatsEntry;->mUid:I

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_2

    .line 432
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 435
    :cond_2
    const/4 v3, 0x0

    .line 436
    .local v3, "isStarted":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 437
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 438
    .local v0, "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v6, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 439
    iget-object v6, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 440
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 441
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 445
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 446
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-nez v6, :cond_4

    .line 447
    const/4 v3, 0x1

    .line 438
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 436
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 453
    .end local v0    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v4    # "j":I
    :cond_6
    if-eqz v3, :cond_0

    .line 454
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 449
    .restart local v0    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .restart local v4    # "j":I
    .restart local v5    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method private createDetails()V
    .locals 18

    .prologue
    .line 178
    const v14, 0x7f080009

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->addPreferencesFromResource(I)V

    .line 180
    const-string v14, "processes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->fillProcessesSection()V

    .line 183
    const-string v14, "status_header"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/applications/LayoutPreference;

    .line 186
    .local v9, "headerLayout":Lcom/android/settings_ex/applications/LayoutPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_0

    const/4 v13, 0x1

    .line 187
    .local v13, "statsForeground":Z
    :goto_0
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v16, v0

    mul-double v2, v14, v16

    .line 188
    .local v2, "avgRam":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    div-double v14, v2, v14

    double-to-float v4, v14

    .line 189
    .local v4, "avgRatio":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v12, v14, v4

    .line 190
    .local v12, "remainingRatio":F
    const v14, 0x7f1201b6

    invoke-virtual {v9, v14}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/applications/LinearColorBar;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 192
    .local v5, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    const v15, 0x7f0e004d

    invoke-virtual {v5, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    const/16 v16, 0x0

    const v17, 0x7f0e004e

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Context;->getColor(I)I

    move-result v17

    invoke-virtual/range {v14 .. v17}, Lcom/android/settings_ex/applications/LinearColorBar;->setColors(III)V

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    const/4 v15, 0x0

    invoke-virtual {v14, v4, v15, v12}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 195
    const v14, 0x7f1201b5

    invoke-virtual {v9, v14}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v15

    double-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunDuration:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgDuration:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 199
    .local v6, "duration":J
    long-to-float v14, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v15, v0

    div-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 201
    .local v8, "frequency":Ljava/lang/CharSequence;
    const-string v14, "frequency"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalScale:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    mul-double v10, v14, v16

    .line 203
    .local v10, "max":D
    const-string v14, "max_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v15

    double-to-long v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    return-void

    .line 186
    .end local v2    # "avgRam":D
    .end local v4    # "avgRatio":F
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "duration":J
    .end local v8    # "frequency":Ljava/lang/CharSequence;
    .end local v10    # "max":D
    .end local v12    # "remainingRatio":F
    .end local v13    # "statsForeground":Z
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 187
    .restart local v13    # "statsForeground":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-wide v14, v14, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    goto/16 :goto_1
.end method

.method private doStopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 413
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 414
    return-void
.end method

.method private fillProcessesSection()V
    .locals 18

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
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

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 240
    .local v5, "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const-string v13, "os"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 241
    iget-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    iput-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    .line 245
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getProcessName(Ljava/lang/String;Lcom/android/settings_ex/applications/ProcStatsEntry;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 247
    .end local v5    # "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_1
    sget-object v12, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    invoke-static {v4, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 249
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 250
    .restart local v5    # "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 251
    .local v9, "processPref":Landroid/preference/Preference;
    iget-object v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 254
    iget-wide v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v14, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBgDuration:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 255
    .local v2, "duration":J
    iget-wide v12, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v12, v14

    double-to-long v12, v12

    iget-wide v14, v5, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBgWeight:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-long v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 257
    .local v10, "memoryUse":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "memoryString":Ljava/lang/String;
    long-to-float v12, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v13, v14

    div-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 260
    .local v6, "frequency":Ljava/lang/CharSequence;
    const v12, 0x7f0c0d4b

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v6, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 248
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 264
    .end local v2    # "duration":J
    .end local v5    # "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v6    # "frequency":Ljava/lang/CharSequence;
    .end local v8    # "memoryString":Ljava/lang/String;
    .end local v9    # "processPref":Landroid/preference/Preference;
    .end local v10    # "memoryUse":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 267
    :cond_3
    return-void
.end method

.method private fillServicesSection(Lcom/android/settings_ex/applications/ProcStatsEntry;Landroid/preference/PreferenceCategory;)V
    .locals 18
    .param p1, "entry"    # Lcom/android/settings_ex/applications/ProcStatsEntry;
    .param p2, "processPref"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 326
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v8, "pkgServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v7, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;>;"
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 329
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 330
    .local v6, "pkg":Ljava/lang/String;
    const/4 v9, 0x0

    .line 331
    .local v9, "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 332
    .local v12, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry$Service;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, "is":I
    :goto_1
    if-ltz v3, :cond_2

    .line 333
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;

    .line 334
    .local v5, "pent":Lcom/android/settings_ex/applications/ProcStatsEntry$Service;
    iget-wide v14, v5, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mDuration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mOnePercentTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    .line 335
    if-nez v9, :cond_0

    .line 336
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    check-cast v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;

    .line 337
    .restart local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    if-nez v9, :cond_0

    .line 338
    new-instance v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;

    .end local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    invoke-direct {v9}, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;-><init>()V

    .line 339
    .restart local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    iget-object v13, v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-wide v14, v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;->mDuration:J

    iget-wide v0, v5, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mDuration:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v9, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;->mDuration:J

    .line 332
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 328
    .end local v5    # "pent":Lcom/android/settings_ex/applications/ProcStatsEntry$Service;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v3    # "is":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v9    # "psvc":Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;
    .end local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry$Service;>;"
    :cond_3
    sget-object v13, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    invoke-static {v7, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 350
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;

    iget-object v12, v13, Lcom/android/settings_ex/applications/ProcessStatsDetail$PkgService;->mServices:Ljava/util/ArrayList;

    .line 351
    .restart local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry$Service;>;"
    sget-object v13, Lcom/android/settings_ex/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 352
    const/4 v3, 0x0

    .restart local v3    # "is":I
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 353
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;

    .line 354
    .local v10, "service":Lcom/android/settings_ex/applications/ProcStatsEntry$Service;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getLabel(Lcom/android/settings_ex/applications/ProcStatsEntry$Service;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 355
    .local v4, "label":Ljava/lang/CharSequence;
    new-instance v11, Lcom/android/settings_ex/CancellablePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/settings_ex/CancellablePreference;-><init>(Landroid/content/Context;)V

    .line 356
    .local v11, "servicePref":Lcom/android/settings_ex/CancellablePreference;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/CancellablePreference;->setSelectable(Z)V

    .line 357
    invoke-virtual {v11, v4}, Lcom/android/settings_ex/CancellablePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    iget-wide v14, v10, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mDuration:J

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v14, v14

    div-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/CancellablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 360
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v10, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v0, v10, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 349
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v10    # "service":Lcom/android/settings_ex/applications/ProcStatsEntry$Service;
    .end local v11    # "servicePref":Lcom/android/settings_ex/CancellablePreference;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 364
    .end local v3    # "is":I
    .end local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry$Service;>;"
    :cond_5
    return-void
.end method

.method private getLabel(Lcom/android/settings_ex/applications/ProcStatsEntry$Service;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "service"    # Lcom/android/settings_ex/applications/ProcStatsEntry$Service;

    .prologue
    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 371
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget v3, v1, Landroid/content/pm/ServiceInfo;->labelRes:I

    if-eqz v3, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 381
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :catch_0
    move-exception v3

    .line 376
    :cond_1
    iget-object v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 377
    .local v0, "label":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 378
    .local v2, "tail":I
    if-ltz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 379
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getProcessName(Ljava/lang/String;Lcom/android/settings_ex/applications/ProcStatsEntry;)Ljava/lang/String;
    .locals 4
    .param p0, "appLabel"    # Ljava/lang/String;
    .param p1, "entry"    # Lcom/android/settings_ex/applications/ProcStatsEntry;

    .prologue
    .line 278
    iget-object v0, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 279
    .local v0, "processName":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 292
    .end local p0    # "appLabel":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 282
    .restart local p0    # "appLabel":Ljava/lang/String;
    :cond_1
    iget-object v2, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 286
    iget-object v2, p1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 287
    .local v1, "start":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 290
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v1    # "start":I
    :cond_3
    move-object p0, v0

    .line 292
    goto :goto_0
.end method

.method private killProcesses()V
    .locals 6

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 419
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 420
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 421
    .local v1, "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 422
    iget-object v4, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 419
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
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
    .line 399
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c081e

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c081f

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c07c7

    new-instance v2, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;-><init>(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c07c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 409
    return-void
.end method

.method private stopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 387
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 388
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ProcessStatsDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 395
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRunningServices()V
    .locals 9

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 145
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 149
    .local v5, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 150
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 151
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/CancellablePreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/CancellablePreference;->setCancellable(Z)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 156
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 157
    .local v4, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v7, :cond_2

    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v7, :cond_2

    .line 155
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_2
    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 163
    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 164
    .local v6, "service":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/CancellablePreference;

    .line 165
    .local v3, "pref":Lcom/android/settings_ex/CancellablePreference;
    if-eqz v3, :cond_1

    .line 166
    new-instance v7, Lcom/android/settings_ex/applications/ProcessStatsDetail$1;

    invoke-direct {v7, p0, v6}, Lcom/android/settings_ex/applications/ProcessStatsDetail$1;-><init>(Lcom/android/settings_ex/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/CancellablePreference;->setOnCancelListener(Lcom/android/settings_ex/CancellablePreference$OnCancelListener;)V

    .line 172
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/CancellablePreference;->setCancellable(Z)V

    goto :goto_2

    .line 175
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
    .line 131
    const/16 v0, 0x15

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "package_entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 108
    const-string v1, "weight_to_ram"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mWeightToRam:D

    .line 109
    const-string v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    .line 110
    const-string v1, "max_memory_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    .line 111
    const-string v1, "total_scale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalScale:D

    .line 112
    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mTotalTime:J

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mOnePercentTime:J

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->createDetails()V

    .line 116
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->setHasOptionsMenu(Z)V

    .line 117
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 209
    const/4 v0, 0x1

    const v1, 0x7f0c0798

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    .line 210
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->checkForceStop()V

    .line 211
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 217
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->killProcesses()V

    .line 218
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->checkForceStop()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 140
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v2, v1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    const-string v1, "os"

    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-static {p0, v0, v2, v1}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 127
    return-void

    .line 123
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail;->mApp:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1
.end method
