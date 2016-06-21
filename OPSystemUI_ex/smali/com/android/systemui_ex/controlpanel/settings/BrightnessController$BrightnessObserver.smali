.class Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .line 131
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 123
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 125
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 127
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 132
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 137
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateMode()V
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$400(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateSlider()V
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$500(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomatic:Z
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$600(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateSlider()V
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$500(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomatic:Z
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$600(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateSlider()V
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$500(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateMode()V
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$400(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # invokes: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateSlider()V
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$500(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 161
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->access$700(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 172
    return-void
.end method
