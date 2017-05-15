.class Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;
.super Ljava/lang/Object;
.source "ReceiverPowerOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 104
    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$100(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 105
    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 107
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 108
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "cls":Ljava/lang/String;
    const-string v5, "ReceiverPowerOff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v5, "ReceiverPowerOff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cls:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v5, "com.android.incallui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.android.incallui.OppoInCallActivity"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$300(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$200(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$300(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$200(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cls":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "pkg":Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "cls":Ljava/lang/String;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    .restart local v4    # "pkg":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$100(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cls":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    const-string v5, "ReceiverPowerOff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mContext = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$000(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mPoweroffAction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;->this$0:Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;

    # getter for: Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;
    invoke-static {v7}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->access$100(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
