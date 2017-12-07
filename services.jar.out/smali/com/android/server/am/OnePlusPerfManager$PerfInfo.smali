.class public Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerfInfo"
.end annotation


# instance fields
.field public mPerfLock:I

.field public mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 169
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "perfLock"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 164
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 165
    iput p2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 163
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PerfInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
