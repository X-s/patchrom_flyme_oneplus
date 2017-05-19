.class final Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ThreeKeyAudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final MEDIA_SWITCH_MODE:Landroid/net/Uri;

.field private final VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;


# direct methods
.method public constructor <init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 150
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 151
    const-string v0, "oem_vibrate_under_silent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    .line 152
    const-string v0, "oem_zen_media_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    .line 156
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    # getter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 168
    const-string v4, "ThreeKeyAudioPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settings change selfChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VIBRATE_WHEN_MUTE_MODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    # getter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_vibrate_under_silent"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    :cond_0
    # setter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z
    invoke-static {v4, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$102(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 193
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    # setter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z
    invoke-static {v2, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$402(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 194
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    # getter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;
    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$300(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oem/os/ThreeKeyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oem/os/ThreeKeyManager;->resetThreeKey()V

    .line 195
    :cond_2
    return-void

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 175
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    # getter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_zen_media_switch"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v2, v3

    :cond_4
    # setter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z
    invoke-static {v4, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$202(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    goto :goto_0

    .line 177
    :cond_5
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    const-string v4, "ThreeKeyAudioPolicy"

    const-string v5, "zen mode was changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    # getter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;
    invoke-static {v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$300(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oem/os/ThreeKeyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oem/os/ThreeKeyManager;->getThreeKeyStatus()I

    move-result v0

    .line 181
    .local v0, "status":I
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    # getter for: Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, "zenmode":I
    const-string v2, "ThreeKeyAudioPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zen mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " three key status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-ne v0, v3, :cond_6

    if-ne v1, v3, :cond_1

    :cond_6
    if-ne v0, v7, :cond_7

    if-ne v1, v7, :cond_1

    :cond_7
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto/16 :goto_0
.end method
