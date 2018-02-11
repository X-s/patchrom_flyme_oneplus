.class final Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/OPButtonsSettings;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/settings/OPButtonsSettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    .line 695
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 692
    const-string/jumbo v0, "oem_acc_key_lock_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 691
    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    .line 694
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->-get1(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 699
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 706
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {v1}, Lcom/oneplus/settings/OPButtonsSettings;->-wrap0(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 707
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 705
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
