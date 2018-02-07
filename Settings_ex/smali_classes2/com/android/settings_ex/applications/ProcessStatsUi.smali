.class public Lcom/android/settings_ex/applications/ProcessStatsUi;
.super Lcom/android/settings_ex/applications/ProcessStatsBase;
.source "ProcessStatsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ProcessStatsUi$1;,
        Lcom/android/settings_ex/applications/ProcessStatsUi$2;
    }
.end annotation


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I

.field public static final CACHED_PROC_STATES:[I

.field static final DEBUG:Z = false

.field public static final FOREGROUND_PROC_STATES:[I

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final MENU_SHOW_AVG:I = 0x1

.field private static final MENU_SHOW_MAX:I = 0x2

.field static final TAG:Ljava/lang/String; = "ProcessStatsUi"

.field static final sMaxPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mMenuAvg:Landroid/view/MenuItem;

.field private mMenuMax:Landroid/view/MenuItem;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowMax:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 122
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 130
    new-array v0, v2, [I

    .line 131
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 130
    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 135
    const/16 v0, 0xb

    const/16 v1, 0xc

    .line 136
    const/16 v2, 0xd

    .line 134
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 187
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsUi$1;-><init>()V

    .line 186
    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    .line 200
    new-instance v0, Lcom/android/settings_ex/applications/ProcessStatsUi$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcessStatsUi$2;-><init>()V

    .line 199
    sput-object v0, Lcom/android/settings_ex/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    .line 40
    return-void

    .line 122
    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsBase;-><init>()V

    return-void
.end method

.method public static makeDuration(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateMenu()V
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 88
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x17

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    .line 62
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    .line 63
    const-string/jumbo v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 70
    const/4 v0, 0x1

    const v1, 0x7f0e0f65

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    .line 71
    const/4 v0, 0x2

    const v1, 0x7f0e0f66

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->updateMenu()V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 80
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->refreshUi()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->updateMenu()V

    .line 83
    return v1

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 105
    instance-of v2, p1, Lcom/android/settings_ex/applications/ProcessStatsPreference;

    if-nez v2, :cond_0

    .line 106
    const/4 v2, 0x0

    return v2

    :cond_0
    move-object v1, p1

    .line 108
    check-cast v1, Lcom/android/settings_ex/applications/ProcessStatsPreference;

    .line 109
    .local v1, "pgp":Lcom/android/settings_ex/applications/ProcessStatsPreference;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v0

    .line 110
    .local v0, "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->getEntry()Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/android/settings_ex/applications/ProcessStatsUi;->launchMemoryDetail(Lcom/android/settings_ex/SettingsActivity;Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;Z)V

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/ProcessStatsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public refreshUi()V
    .locals 15

    .prologue
    .line 147
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 148
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 149
    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0e0f5f

    :goto_0
    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 153
    .local v11, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v13

    .line 155
    .local v13, "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v14

    .line 158
    .local v14, "pkgEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/ProcStatsPackageEntry;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_1
    if-ge v12, v0, :cond_1

    .line 159
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 160
    .local v2, "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->updateMetrics()V

    .line 158
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "N":I
    .end local v2    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "i":I
    .end local v13    # "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    .end local v14    # "pkgEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/ProcStatsPackageEntry;>;"
    :cond_0
    const v3, 0x7f0e0f5e

    goto :goto_0

    .line 163
    .restart local v0    # "N":I
    .restart local v11    # "context":Landroid/content/Context;
    .restart local v12    # "i":I
    .restart local v13    # "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    .restart local v14    # "pkgEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/applications/ProcStatsPackageEntry;>;"
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings_ex/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    :goto_2
    invoke-static {v14, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_4

    iget-wide v4, v13, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 172
    .local v4, "maxMemory":D
    :goto_3
    const/4 v12, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_6

    .line 173
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 175
    .restart local v2    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    iget-object v3, v2, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 176
    new-instance v1, Lcom/android/settings_ex/applications/ProcessStatsPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsUi;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings_ex/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, "pref":Lcom/android/settings_ex/applications/ProcessStatsPreference;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v11, v3}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    iget-wide v6, v13, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->weightToRam:D

    .line 179
    iget-wide v8, v13, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->totalScale:D

    iget-boolean v10, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    .line 178
    :goto_5
    invoke-virtual/range {v1 .. v10}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->init(Lcom/android/settings_ex/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V

    .line 180
    invoke-virtual {v1, v12}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->setOrder(I)V

    .line 181
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 172
    .end local v1    # "pref":Lcom/android/settings_ex/applications/ProcessStatsPreference;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 163
    .end local v2    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .end local v4    # "maxMemory":D
    :cond_3
    sget-object v3, Lcom/android/settings_ex/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    goto :goto_2

    .line 171
    :cond_4
    iget-wide v6, v13, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v8, v13, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double v4, v6, v8

    .restart local v4    # "maxMemory":D
    goto :goto_3

    .line 179
    .restart local v1    # "pref":Lcom/android/settings_ex/applications/ProcessStatsPreference;
    .restart local v2    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    :cond_5
    const/4 v10, 0x1

    goto :goto_5

    .line 146
    .end local v1    # "pref":Lcom/android/settings_ex/applications/ProcessStatsPreference;
    .end local v2    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    :cond_6
    return-void
.end method
