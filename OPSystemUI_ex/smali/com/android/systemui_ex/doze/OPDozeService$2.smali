.class Lcom/android/systemui_ex/doze/OPDozeService$2;
.super Ljava/lang/Object;
.source "OPDozeService.java"

# interfaces
.implements Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/doze/OPDozeService;->continuePulsing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/doze/OPDozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "OPDozeService"

    const-string v1, "onPulseFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$200(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$100(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$202(Lcom/android/systemui_ex/doze/OPDozeService;Z)Z

    .line 248
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->turnDisplayOff()V
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$400(Lcom/android/systemui_ex/doze/OPDozeService;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 251
    return-void
.end method

.method public onPulseStarted()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "OPDozeService"

    const-string v1, "onPulseStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$200(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$100(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$2;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->turnDisplayOn()V
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$300(Lcom/android/systemui_ex/doze/OPDozeService;)V

    .line 241
    :cond_0
    return-void
.end method
