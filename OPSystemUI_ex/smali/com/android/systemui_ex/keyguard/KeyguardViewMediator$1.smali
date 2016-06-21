.class Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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
    .line 313
    iput-object p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 375
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateInputRestricted()V
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 381
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 357
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 369
    :cond_0
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 387
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSimStateChanged(subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 393
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    .line 394
    .local v2, "simPinSecure":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 395
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v4, v2}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    .end local v2    # "simPinSecure":Z
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onSimSecureStateChanged"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v4, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 453
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_1
    return-void

    .line 406
    :pswitch_0
    monitor-enter p0

    .line 407
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 409
    const-string v4, "KeyguardViewMediator"

    const-string v5, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v5, 0x0

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v4, v5}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 417
    :cond_1
    :goto_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 414
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 421
    :pswitch_1
    monitor-enter p0

    .line 422
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 423
    const-string v4, "KeyguardViewMediator"

    const-string v5, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v5, 0x0

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v4, v5}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 430
    :goto_3
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 428
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 433
    :pswitch_2
    monitor-enter p0

    .line 434
    :try_start_5
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 435
    const-string v4, "KeyguardViewMediator"

    const-string v5, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v5, 0x0

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v4, v5}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 443
    :goto_4
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 439
    :cond_4
    :try_start_6
    const-string v4, "KeyguardViewMediator"

    const-string v5, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 446
    :pswitch_3
    monitor-enter p0

    .line 447
    :try_start_7
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 448
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 450
    :cond_5
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserInfoChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 351
    invoke-static {}, Lcom/android/keyguard/MultiUserAvatarCache;->getInstance()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 352
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 346
    invoke-static {}, Lcom/android/keyguard/MultiUserAvatarCache;->getInstance()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 347
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v1, v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$002(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z

    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 336
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->dismiss()V

    .line 341
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$002(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z

    .line 322
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
