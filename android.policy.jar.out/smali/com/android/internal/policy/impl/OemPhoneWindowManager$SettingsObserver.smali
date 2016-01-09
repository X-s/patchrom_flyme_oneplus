.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .line 566
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 567
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 572
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oem_acc_key_define"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 580
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->updateOemSettings()V

    .line 581
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->updateOemSettings()V

    .line 592
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 587
    return-void
.end method
