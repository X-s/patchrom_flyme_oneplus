.class Lcom/android/server/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field mLastEnabled:Ljava/lang/String;

.field mRegistered:Z

.field mUserId:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 502
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 496
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 501
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 13
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 533
    const-string/jumbo v7, "show_ime_with_hard_keyboard"

    .line 532
    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 535
    .local v3, "showImeUri":Landroid/net/Uri;
    const-string/jumbo v7, "accessibility_soft_keyboard_mode"

    .line 534
    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 536
    .local v0, "accessibilityRequestingNoImeUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 537
    :try_start_0
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 538
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v7

    .line 531
    return-void

    .line 539
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 540
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 541
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 542
    const-string/jumbo v10, "accessibility_soft_keyboard_mode"

    .line 543
    iget v11, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    const/4 v12, 0x0

    .line 540
    invoke-static {v9, v10, v12, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v5, :cond_2

    :goto_1
    invoke-static {v8, v5}, Lcom/android/server/InputMethodManagerService;->-set0(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 544
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->-get0(Lcom/android/server/InputMethodManagerService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 545
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v4, v5, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 546
    .local v4, "showRequested":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 547
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v4, v5, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    .end local v4    # "showRequested":Z
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_2
    move v5, v6

    .line 540
    goto :goto_1

    .line 548
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v5, v5, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v5, :cond_0

    .line 549
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 552
    :cond_4
    const/4 v1, 0x0

    .line 553
    .local v1, "enabledChanged":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "newEnabled":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 555
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 556
    const/4 v1, 0x1

    .line 558
    :cond_5
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public registerContentObserverLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 506
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-ne v1, p1, :cond_0

    .line 507
    return-void

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 510
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 512
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 514
    :cond_1
    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2

    .line 515
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 516
    iput p1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 519
    :cond_2
    const-string/jumbo v1, "default_input_method"

    .line 518
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 521
    const-string/jumbo v1, "enabled_input_methods"

    .line 520
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 523
    const-string/jumbo v1, "selected_input_method_subtype"

    .line 522
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 525
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    .line 524
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 527
    const-string/jumbo v1, "accessibility_soft_keyboard_mode"

    .line 526
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 528
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 505
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SettingsObserver{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 566
    const-string/jumbo v1, " mLastEnabled="

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 566
    const-string/jumbo v1, "}"

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
