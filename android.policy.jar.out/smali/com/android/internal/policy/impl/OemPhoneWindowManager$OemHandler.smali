.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemHandler"
.end annotation


# static fields
.field static final MSG_CHECK_FINGE:I = 0x6

.field static final MSG_DELAY_KEY:I = 0x5

.field static final MSG_DESTORY_DELAY:I = 0x2

.field static final MSG_INJECT_MENU:I = 0x1

.field static final MSG_INTERNAL:I = 0xb

.field static final MSG_JECT_MENU_KEY:I = 0x9

.field static final MSG_REMOVE:I = 0x3

.field static final MSG_RESET_ATTEMPT:I = 0x8

.field static final MSG_STATUS:I = 0xa

.field static final MSG_TOGGLE:I = 0x4

.field static final MSG_UPDATE_KEYGUARD:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 423
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 433
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/16 v8, 0x52

    # invokes: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->triggerVirtualKeypress(I)V
    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/OemPhoneWindowManager;I)V

    goto :goto_0

    .line 436
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;
    invoke-static {v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/FingerprintUnlock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    goto :goto_0

    .line 439
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;
    invoke-static {v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/FingerprintUnlock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/FingerprintUnlock;->removeNoMatchView()V

    goto :goto_0

    .line 445
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 446
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    goto :goto_0

    .line 449
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    .line 450
    .local v2, "event":Landroid/view/KeyEvent;
    const-string v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_DELAY_KEY swapeFromButton ="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-boolean v12, v12, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    if-nez v6, :cond_2

    .line 452
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 454
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v22

    .line 455
    .local v22, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 456
    .local v4, "now":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    const/16 v15, 0x2002

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 461
    .local v3, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v7

    .line 463
    .local v7, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 464
    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 466
    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    .end local v4    # "now":J
    .end local v7    # "downEvent":Landroid/view/KeyEvent;
    .end local v22    # "im":Landroid/hardware/input/InputManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    goto/16 :goto_0

    .line 472
    .end local v2    # "event":Landroid/view/KeyEvent;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mT:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    sput-boolean v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 476
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;
    invoke-static {v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/FingerprintUnlock;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 477
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;
    invoke-static {v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/FingerprintUnlock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resetAttempts()V

    goto/16 :goto_0

    .line 481
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    if-nez v6, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v8, v12, v13}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 485
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/view/KeyEvent;

    .line 486
    .local v25, "keyevent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v22

    .line 487
    .restart local v22    # "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 488
    .restart local v4    # "now":J
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    invoke-virtual/range {v25 .. v25}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {v25 .. v25}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/KeyEvent;->getFlags()I

    move-result v18

    const/16 v19, 0x2002

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 494
    .restart local v7    # "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x1

    invoke-static {v7, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    .line 496
    .restart local v3    # "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 497
    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 498
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    goto/16 :goto_0

    .line 502
    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    .end local v4    # "now":J
    .end local v7    # "downEvent":Landroid/view/KeyEvent;
    .end local v22    # "im":Landroid/hardware/input/InputManager;
    .end local v25    # "keyevent":Landroid/view/KeyEvent;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    if-eqz v6, :cond_5

    .line 503
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    goto/16 :goto_0

    .line 506
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->keyguardOn()Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 507
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->toggleRecentApps()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    .line 510
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    goto/16 :goto_0

    .line 513
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 516
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/KeyEvent;

    .line 517
    .local v24, "internateKey":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v23

    .line 518
    .local v23, "im1":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 519
    .local v10, "nowTime":J
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v18

    invoke-virtual/range {v24 .. v24}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v19

    invoke-virtual/range {v24 .. v24}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    const/16 v21, 0x2002

    move-wide v12, v10

    invoke-direct/range {v9 .. v21}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 527
    .local v9, "internateKeyUp":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    goto/16 :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
