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

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v5}, Lcom/android/settings_ex/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 117
    .local v4, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 118
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 122
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v5}, Lcom/android/settings_ex/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings_ex/CryptKeeperConfirm$Blank;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v5}, Lcom/android/settings_ex/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v5, v1}, Lcom/android/settings_ex/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    .line 128
    :try_start_0
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 129
    .local v3, "service":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 130
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v3    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CryptKeeperConfirm"

    const-string v6, "Error storing locale for decryption UI"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
