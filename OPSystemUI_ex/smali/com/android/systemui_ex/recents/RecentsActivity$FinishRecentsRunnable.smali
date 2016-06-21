.class Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishRecentsRunnable"
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mLaunchOpts:Landroid/app/ActivityOptions;

.field final synthetic this$0:Lcom/android/systemui_ex/recents/RecentsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 112
    iput-object p3, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    .line 113
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui_ex/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 137
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "RecentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recents does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "RecentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found to handle Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/RecentsActivity;->finish()V

    .line 134
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui_ex/recents/RecentsActivity;

    const v2, 0x7f050073

    const v3, 0x7f050074

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
