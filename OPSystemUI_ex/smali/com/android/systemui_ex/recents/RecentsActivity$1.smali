.class Lcom/android/systemui_ex/recents/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$1;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "action":Ljava/lang/String;
    const-string v1, "action_hide_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    const-string v1, "triggeredFromAltTab"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$1;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v1, "triggeredFromHomeKey"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$1;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToHome(Z)Z

    goto :goto_0

    .line 157
    :cond_2
    const-string v1, "action_toggle_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$1;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0

    .line 160
    :cond_3
    const-string v1, "action_start_enter_animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$1;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 165
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/RecentsActivity$1;->setResultCode(I)V

    goto :goto_0
.end method
