.class Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalScoreEvaluator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator$BestCandidateType;
    }
.end annotation


# instance fields
.field private mBestCandidateType:I

.field private final mDbg:Z

.field private mHighScore:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mSavedConfig:Landroid/net/wifi/WifiConfiguration;

.field private mScanResultCandidate:Landroid/net/wifi/ScanResult;


# direct methods
.method constructor <init>(Landroid/util/LocalLog;Z)V
    .locals 1
    .param p1, "localLog"    # Landroid/util/LocalLog;
    .param p2, "dbg"    # Z

    .prologue
    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    .line 1103
    const/16 v0, -0x80

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    .line 1110
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    .line 1111
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mDbg:Z

    .line 1109
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1159
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1158
    :cond_0
    return-void
.end method


# virtual methods
.method evalSavedCandidate(Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "score"    # Ljava/lang/Integer;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1129
    if-eqz p1, :cond_1

    .line 1130
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    if-gt v0, v1, :cond_0

    .line 1131
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1132
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    if-ne v0, v1, :cond_1

    .line 1133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    .line 1134
    iput-object p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1135
    iput-object p3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 1136
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " become the new externally scored saved network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1138
    const-string/jumbo v1, "candidate"

    .line 1137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->localLog(Ljava/lang/String;)V

    .line 1126
    :cond_1
    return-void
.end method

.method evalUntrustedCandidate(Ljava/lang/Integer;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "score"    # Ljava/lang/Integer;
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    if-le v0, v1, :cond_0

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    .line 1118
    iput-object p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 1119
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " become the new untrusted candidate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->localLog(Ljava/lang/String;)V

    .line 1115
    :cond_0
    return-void
.end method

.method getBestCandidateType()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    return v0
.end method

.method getHighScore()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    return v0
.end method

.method getSavedConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getScanResultCandidate()Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    return-object v0
.end method
