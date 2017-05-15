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
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    .line 581
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 577
    const-string v0, "oem_acc_key_lock_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    .line 582
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    # getter for: Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->access$200(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 589
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 592
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    # invokes: Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/oneplus/settings/OPButtonsSettings;->access$300(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 593
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->OEM_EYECARE_ENABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
