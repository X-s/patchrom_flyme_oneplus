.class Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    .line 209
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 208
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 213
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/DeviceKeyHandler;->-get2(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "oem_acc_blackscreen_gestrue_enable"

    .line 214
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 218
    const-string/jumbo v1, "oem_acc_anti_misoperation_screen"

    .line 217
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 220
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/DeviceKeyHandler;->-wrap1(Lcom/android/server/policy/DeviceKeyHandler;)V

    .line 212
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->-wrap1(Lcom/android/server/policy/DeviceKeyHandler;)V

    .line 224
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 229
    return-void
.end method
