.class Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1125
    const-string v1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const-string v1, "seq"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1129
    .local v0, "sequence":I
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v1, v3}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2102(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z

    .line 1133
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v1, v3}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1137
    :goto_0
    monitor-exit v2

    .line 1139
    .end local v0    # "sequence":I
    :cond_0
    return-void

    .line 1135
    .restart local v0    # "sequence":I
    :cond_1
    const-string v1, "KeyguardViewMediator"

    const-string v3, "not handle delay keyguard"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
