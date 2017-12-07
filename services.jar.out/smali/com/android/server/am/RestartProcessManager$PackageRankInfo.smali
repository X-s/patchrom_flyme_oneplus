.class Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageRankInfo"
.end annotation


# instance fields
.field private mForegroundTime:J

.field private mLastLaunchTime:J

.field private mPackageName:Ljava/lang/String;

.field private mRank:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mForegroundTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mRank:I

    return v0
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "launchTime"    # J

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mRank:I

    .line 121
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    .line 122
    iput-wide p2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mForegroundTime:J

    .line 123
    iput-wide p4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    .line 120
    return-void
.end method


# virtual methods
.method public increaseRank(I)V
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mRank:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mRank:I

    .line 126
    return-void
.end method
