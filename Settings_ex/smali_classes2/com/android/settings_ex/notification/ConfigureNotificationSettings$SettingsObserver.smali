.class final Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ConfigureNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    .line 358
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 351
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 350
    iput-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 353
    const-string/jumbo v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    iput-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 355
    const-string/jumbo v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 354
    iput-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 357
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->-wrap2(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->-wrap1(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V

    .line 373
    :cond_2
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 365
    iget-object v1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 366
    iget-object v1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 361
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
