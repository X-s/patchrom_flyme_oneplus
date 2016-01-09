.class Lcom/android/server/am/OnePlusProcessManager$OPPMKey;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OPPMKey"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 1
    .param p2, "uid"    # I

    .prologue
    .line 2659
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2657
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;->uid:I

    .line 2660
    iput p2, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;->uid:I

    .line 2661
    return-void
.end method


# virtual methods
.method public getUid()I
    .locals 1

    .prologue
    .line 2664
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;->uid:I

    return v0
.end method
