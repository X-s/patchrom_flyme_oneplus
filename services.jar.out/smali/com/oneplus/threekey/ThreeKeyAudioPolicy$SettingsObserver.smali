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
    .param p1, "this$0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 193
    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 194
    const-string/jumbo v0, "oem_vibrate_under_silent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    .line 195
    const-string/jumbo v0, "oem_zen_media_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    .line 197
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v1}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 211
    const-string/jumbo v2, "ThreeKeyAudioPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "settings change selfChange="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oem/os/ThreeKeyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oem/os/ThreeKeyManager;->getThreeKeyStatus()I

    move-result v0

    .line 213
    .local v0, "status":I
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "zen_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, "zenmode":I
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 217
    const-string/jumbo v6, "oem_vibrate_under_silent"

    .line 216
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-set2(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 218
    if-ne v0, v3, :cond_1

    .line 219
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2, v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-set0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 220
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-virtual {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setUp()V

    .line 221
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 222
    const-string/jumbo v6, "oem_zen_media_switch"

    .line 221
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v2, v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-set0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 241
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-set1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 242
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oem/os/ThreeKeyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oem/os/ThreeKeyManager;->resetThreeKey()V

    .line 210
    return-void

    :cond_2
    move v2, v4

    .line 216
    goto :goto_0

    .line 224
    :cond_3
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 226
    const-string/jumbo v6, "oem_zen_media_switch"

    .line 225
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v4, v3

    :cond_4
    invoke-static {v2, v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-set0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    goto :goto_1

    .line 227
    :cond_5
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    const-string/jumbo v2, "ThreeKeyAudioPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zen mode was changed, zen mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", three key status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get2(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Z

    move-result v2

    if-nez v2, :cond_7

    if-ne v0, v3, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 235
    :cond_6
    const-string/jumbo v2, "ThreeKeyAudioPolicy"

    const-string/jumbo v4, "zen mode was changed to incorrect status,need to sync"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 230
    :cond_7
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->-get2(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne v0, v3, :cond_8

    if-nez v1, :cond_6

    .line 231
    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    if-ne v1, v3, :cond_6

    .line 233
    :cond_9
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 237
    return-void
.end method
