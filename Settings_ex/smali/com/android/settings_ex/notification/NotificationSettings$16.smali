.class Lcom/android/settings_ex/notification/NotificationSettings$16;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettings;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$16;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1446
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$16;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_notification_vibrate_settings"

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings$16;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$3100(Lcom/android/settings_ex/notification/NotificationSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1447
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$16;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$16;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$3100(Lcom/android/settings_ex/notification/NotificationSettings;)I

    move-result v1

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateIncallVibrate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$3200(Lcom/android/settings_ex/notification/NotificationSettings;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :goto_0
    return-void

    .line 1449
    :catch_0
    move-exception v0

    goto :goto_0
.end method
