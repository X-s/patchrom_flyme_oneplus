.class Lcom/oneplus/tuner/MainActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MainActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MainActivity;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/oneplus/tuner/MainActivity$8;->this$0:Lcom/oneplus/tuner/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 566
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.oneplus.tunerACTION_LOGIN_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity$8;->this$0:Lcom/oneplus/tuner/MainActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/tuner/MainActivity;->mIsNeedDoResume:Z

    .line 569
    const-string v1, "cbt"

    const-string v2, "BroadcastReceiver--ACTION_LOGIN_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity$8;->this$0:Lcom/oneplus/tuner/MainActivity;

    # invokes: Lcom/oneplus/tuner/MainActivity;->doOnResume()V
    invoke-static {v1}, Lcom/oneplus/tuner/MainActivity;->access$300(Lcom/oneplus/tuner/MainActivity;)V

    .line 571
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity$8;->this$0:Lcom/oneplus/tuner/MainActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oneplus/tuner/MainActivity;->mIsNeedDoResume:Z

    .line 574
    :cond_0
    return-void
.end method
