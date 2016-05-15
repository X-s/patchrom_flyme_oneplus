.class Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "FingerprintUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FingerprintUnlock;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    .line 94
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 95
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oem_finger_lockscreen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->updateOemSettings()V

    .line 115
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 110
    return-void
.end method
