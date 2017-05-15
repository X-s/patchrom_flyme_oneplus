.class final Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPRingPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPRingPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPRingPattern;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPRingPattern;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 98
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 103
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    # invokes: Lcom/oneplus/settings/notification/OPRingPattern;->updateVibrateWhenRinging()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPRingPattern;->access$200(Lcom/oneplus/settings/notification/OPRingPattern;)V

    .line 120
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 106
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    # invokes: Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPRingPattern;->access$100(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
