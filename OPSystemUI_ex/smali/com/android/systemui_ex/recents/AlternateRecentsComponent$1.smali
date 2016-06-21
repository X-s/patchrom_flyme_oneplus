.class Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1;
.super Landroid/content/BroadcastReceiver;
.source "AlternateRecentsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/AlternateRecentsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/AlternateRecentsComponent;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui_ex/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui_ex/recents/AlternateRecentsComponent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 785
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui_ex/recents/AlternateRecentsComponent;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1$1;-><init>(Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1;)V

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
