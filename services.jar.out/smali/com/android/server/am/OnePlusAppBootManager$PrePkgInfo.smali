.class Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrePkgInfo"
.end annotation


# instance fields
.field public mAction:I

.field public mFlag:I

.field public mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "action"    # I

    .prologue
    const/4 v1, 0x0

    .line 142
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    .line 140
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    .line 141
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    .line 143
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    .line 144
    iput p3, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    .line 145
    iput p4, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    .line 142
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PrePkgInfo{mPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, ", mFlag="

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget v2, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, ", mAction="

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget v2, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "}"

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method
