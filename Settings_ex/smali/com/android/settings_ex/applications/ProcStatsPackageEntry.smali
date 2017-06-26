.class public Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ALWAYS_THRESHOLD:F = 0.95f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field private static final SOMETIMES_THRESHOLD:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "ProcStatsEntry"


# instance fields
.field mAvgBgMem:J

.field mAvgRunMem:J

.field mBgDuration:J

.field mBgWeight:D

.field final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field mMaxBgMem:J

.field mMaxRunMem:J

.field public mPackage:Ljava/lang/String;

.field mRunDuration:J

.field mRunWeight:D

.field public mUiLabel:Ljava/lang/String;

.field public mUiTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWindowLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->DEBUG:Z

    .line 154
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgDuration:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "windowLength"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 57
    iput-wide p2, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mWindowLength:J

    .line 58
    return-void
.end method

.method public static getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "amount"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    .line 167
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 168
    const v0, 0x7f0c0d44

    new-array v1, v1, [Ljava/lang/Object;

    mul-float/2addr v2, p0

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 170
    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 171
    const v0, 0x7f0c0d45

    new-array v1, v1, [Ljava/lang/Object;

    mul-float/2addr v2, p0

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    const v0, 0x7f0c0d46

    new-array v1, v1, [Ljava/lang/Object;

    mul-float/2addr v2, p0

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/settings_ex/applications/ProcStatsEntry;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundFrequency(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgDuration:J

    long-to-float v1, v2

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mWindowLength:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 80
    .local v0, "amountRunning":F
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getRunningFrequency(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunDuration:J

    long-to-float v1, v2

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mWindowLength:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 75
    .local v0, "amountRunning":F
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    .line 118
    :try_start_0
    const-string v0, "os"

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "android"

    const v1, 0xa200

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 123
    const v0, 0x7f0c0988

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    .line 133
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    const v1, 0xa200

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateMetrics()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 88
    iput-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgDuration:J

    .line 89
    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 90
    iput-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 91
    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    .line 92
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 95
    .local v1, "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-wide v4, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBgDuration:J

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgDuration:J

    .line 96
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v6, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mAvgBgMem:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 97
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    iget-wide v6, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBgWeight:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    .line 98
    iget-wide v4, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunDuration:J

    .line 99
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iget-wide v6, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mAvgRunMem:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    .line 100
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v6, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    .line 106
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v6, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mMaxBgMem:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    .line 107
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iget-wide v6, v1, Lcom/android/settings_ex/applications/ProcStatsEntry;->mMaxRunMem:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "entry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_0
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    .line 110
    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 148
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mRunWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 152
    return-void
.end method
