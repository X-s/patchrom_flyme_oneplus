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
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    .line 195
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 196
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/DeviceKeyHandler;->access$100(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 203
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # invokes: Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V
    invoke-static {v1}, Lcom/android/server/policy/DeviceKeyHandler;->access$200(Lcom/android/server/policy/DeviceKeyHandler;)V

    .line 204
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # invokes: Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V
    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$200(Lcom/android/server/policy/DeviceKeyHandler;)V

    .line 209
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 214
    return-void
.end method
