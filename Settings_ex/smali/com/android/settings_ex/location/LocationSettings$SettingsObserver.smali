.class final Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCATION_ENABLE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/location/LocationSettings;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    .line 577
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 564
    const-string v0, "location_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;->LOCATION_ENABLE_URI:Landroid/net/Uri;

    .line 579
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 584
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 585
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "url : updateLocation mode : 0-"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;->LOCATION_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # invokes: Lcom/android/settings_ex/location/LocationSettings;->updateLocation()V
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationSettings;->access$200(Lcom/android/settings_ex/location/LocationSettings;)V

    .line 590
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # invokes: Lcom/android/settings_ex/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/location/LocationSettings;->access$100(Lcom/android/settings_ex/location/LocationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 569
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings$SettingsObserver;->LOCATION_ENABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
