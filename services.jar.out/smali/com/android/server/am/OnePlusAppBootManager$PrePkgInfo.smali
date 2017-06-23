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
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "action"    # I

    .prologue
    const/4 v1, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    .line 113
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    .line 114
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    .line 116
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    .line 117
    iput p3, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    .line 118
    iput p4, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    .line 119
    return-void
.end method
