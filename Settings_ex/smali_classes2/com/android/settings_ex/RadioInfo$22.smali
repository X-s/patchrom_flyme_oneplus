.class Lcom/android/settings_ex/RadioInfo$22;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/RadioInfo;
    .param p2, "val$updatePingResults"    # Ljava/lang/Runnable;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$22;->this$0:Lcom/android/settings_ex/RadioInfo;

    iput-object p2, p0, Lcom/android/settings_ex/RadioInfo$22;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$22;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->-wrap1(Lcom/android/settings_ex/RadioInfo;)V

    .line 1004
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$22;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->-get3(Lcom/android/settings_ex/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$22;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1002
    return-void
.end method
