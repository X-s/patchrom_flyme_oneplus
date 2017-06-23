.class final Lcom/android/server/VibratorService$OemSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OemSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method public constructor <init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/server/VibratorService$OemSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 300
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 301
    return-void
.end method


# virtual methods
.method public observser()V
    .locals 4

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/server/VibratorService$OemSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 306
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oem_vibrate_under_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 308
    iget-object v1, p0, Lcom/android/server/VibratorService$OemSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->updateOemSettings()V

    .line 309
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "SelfChange"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/VibratorService$OemSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v0}, Lcom/android/server/VibratorService;->updateOemSettings()V

    .line 315
    return-void
.end method
