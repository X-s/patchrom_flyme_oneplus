.class Lcom/android/settings_ex/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeperConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/CryptKeeperConfirm;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 102
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    return-void

    .line 122
    :cond_0
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v8}, Lcom/android/settings_ex/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 124
    .local v4, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v8

    .line 123
    invoke-virtual {v4, v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 126
    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 127
    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 130
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v8}, Lcom/android/settings_ex/CryptKeeperConfirm;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 131
    const-string/jumbo v9, "show_password"

    .line 130
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 133
    .local v5, "value":I
    if-eqz v5, :cond_2

    :goto_0
    invoke-virtual {v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    .line 135
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v6}, Lcom/android/settings_ex/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v6}, Lcom/android/settings_ex/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v6, v1}, Lcom/android/settings_ex/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    .line 141
    :try_start_0
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 142
    .local v3, "service":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 143
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v6, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v3    # "service":Landroid/os/IBinder;
    :goto_1
    return-void

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    move v6, v7

    .line 133
    goto :goto_0

    .line 144
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CryptKeeperConfirm"

    const-string/jumbo v7, "Error storing locale for decryption UI"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
