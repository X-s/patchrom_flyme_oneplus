.class public final Lcom/android/internal/app/NightDisplayController;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NightDisplayController$Callback;,
        Lcom/android/internal/app/NightDisplayController$LocalTime;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NightDisplayController"


# instance fields
.field private mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mForceTimeBeModified:I

.field private mPreReadingStatus:Ljava/lang/Boolean;

.field private mPreReadingStatusAuto:Ljava/lang/Boolean;

.field private final mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V
    .locals 0
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/NightDisplayController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    .line 96
    iput p2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 98
    new-instance v0, Lcom/android/internal/app/NightDisplayController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/NightDisplayController$1;-><init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    .line 94
    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .locals 8
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 261
    const-string/jumbo v5, "NightDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSettingChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v5, :cond_0

    .line 265
    const-string/jumbo v5, "night_display_activated"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onNightModeActivated(Z)V

    .line 271
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onActivated(Z)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-string/jumbo v5, "night_display_auto_mode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onAutoModeChanged(I)V

    goto :goto_0

    .line 265
    :cond_2
    const-string/jumbo v5, "night_display_custom_start_time"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 277
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    goto :goto_0

    .line 265
    :cond_3
    const-string/jumbo v5, "night_display_custom_end_time"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 280
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    goto :goto_0

    .line 265
    :cond_4
    const-string/jumbo v5, "reading_mode_status"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 298
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "reading_mode_status_manual"

    iget v7, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 299
    .local v0, "manual":I
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "reading_mode_status"

    iget v7, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 300
    .local v2, "status":I
    const-string/jumbo v5, "NightDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "manual:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mPreReadingStatusAuto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v2, v3, :cond_9

    move v5, v3

    :goto_1
    if-eq v6, v5, :cond_0

    .line 302
    if-ne v2, v3, :cond_a

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    .line 303
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatusAuto:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onReadingModeActivatedAuto(Z)V

    goto/16 :goto_0

    .line 265
    .end local v0    # "manual":I
    .end local v2    # "status":I
    :cond_5
    const-string/jumbo v5, "reading_mode_status_manual"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 307
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 308
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    .line 310
    const-string/jumbo v3, "NightDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSettingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mPreReadingStatus:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/NightDisplayController$Callback;->onReadingModeActivatedManual(Z)V

    goto/16 :goto_0

    .line 265
    :cond_7
    const-string/jumbo v5, "temp_disable_scene_screen_effect"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 316
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 317
    const-string/jumbo v6, "temp_disable_scene_screen_effect"

    iget v7, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 316
    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 322
    .local v1, "setV":I
    const-string/jumbo v5, "NightDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setV:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v5, 0x2

    if-ne v1, v5, :cond_b

    .line 324
    const-string/jumbo v4, "NightDisplayController"

    const-string/jumbo v5, "only reading mode..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/app/NightDisplayController$Callback;->onNightOrReadingModeDisableByApp(Z)V

    goto/16 :goto_0

    .line 265
    .end local v1    # "setV":I
    :cond_8
    const-string/jumbo v3, "screen_color_mode_settings_value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 332
    const-string/jumbo v5, "screen_color_mode_settings_value"

    const/4 v6, -0x2

    .line 331
    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 333
    .restart local v2    # "status":I
    const-string/jumbo v3, "NightDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screen_color_mode_settings_value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-interface {v3}, Lcom/android/internal/app/NightDisplayController$Callback;->onModeSettingChange()V

    goto/16 :goto_0

    .restart local v0    # "manual":I
    :cond_9
    move v5, v4

    .line 301
    goto/16 :goto_1

    :cond_a
    move v3, v4

    .line 302
    goto/16 :goto_2

    .line 327
    .end local v0    # "manual":I
    .end local v2    # "status":I
    .restart local v1    # "setV":I
    :cond_b
    iget-object v5, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-ne v1, v3, :cond_c

    :goto_3
    invoke-interface {v5, v3}, Lcom/android/internal/app/NightDisplayController$Callback;->onNightOrReadingModeDisableByApp(Z)V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method public getAutoMode()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 143
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    const-string/jumbo v2, "night_display_auto_mode"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 143
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 145
    .local v0, "autoMode":I
    if-ne v0, v4, :cond_0

    .line 147
    const-string/jumbo v1, "NightDisplayController"

    const-string/jumbo v2, "Using default value for setting: night_display_auto_mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 150
    const v2, 0x10e004d

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 153
    :cond_0
    if-eqz v0, :cond_1

    .line 154
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 155
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 156
    const-string/jumbo v1, "NightDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid autoMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    .line 160
    :cond_1
    return v0
.end method

.method public getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 226
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 227
    const-string/jumbo v2, "night_display_custom_end_time"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 226
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 228
    .local v0, "endTimeValue":I
    if-ne v0, v4, :cond_0

    .line 230
    const-string/jumbo v1, "NightDisplayController"

    const-string/jumbo v2, "Using default value for setting: night_display_custom_end_time"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 234
    const v2, 0x10e004f

    .line 233
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 237
    :cond_0
    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap0(I)Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 187
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 188
    const-string/jumbo v2, "night_display_custom_start_time"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 187
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 189
    .local v0, "startTimeValue":I
    if-ne v0, v4, :cond_0

    .line 191
    const-string/jumbo v1, "NightDisplayController"

    const-string/jumbo v2, "Using default value for setting: night_display_custom_start_time"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 195
    const v2, 0x10e004e

    .line 194
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 198
    :cond_0
    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap0(I)Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public isActivated()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 116
    const-string/jumbo v3, "night_display_activated"

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 115
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isReadingModeActivated()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "reading_mode_status_manual"

    iget v5, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 122
    .local v0, "v":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setActivated(Z)Z
    .locals 4
    .param p1, "activated"    # Z

    .prologue
    .line 132
    const-string/jumbo v0, "NightDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    const-string/jumbo v2, "night_display_activated"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 133
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoMode(I)Z
    .locals 3
    .param p1, "autoMode"    # I

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 174
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 178
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setCustomEndTime(Lcom/android/internal/app/NightDisplayController$LocalTime;)Z
    .locals 4
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 254
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-static {p1}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap1(Lcom/android/internal/app/NightDisplayController$LocalTime;)I

    move-result v3

    .line 255
    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    rem-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    .line 254
    :goto_0
    add-int/2addr v0, v3

    .line 255
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 253
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 255
    :cond_1
    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    goto :goto_0
.end method

.method public setCustomStartTime(Lcom/android/internal/app/NightDisplayController$LocalTime;)Z
    .locals 4
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    const-string/jumbo v2, "night_display_custom_start_time"

    .line 216
    invoke-static {p1}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap1(Lcom/android/internal/app/NightDisplayController$LocalTime;)I

    move-result v3

    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    rem-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    :goto_0
    add-int/2addr v0, v3

    .line 217
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 214
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 216
    :cond_1
    iget v0, p0, Lcom/android/internal/app/NightDisplayController;->mForceTimeBeModified:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/internal/app/NightDisplayController$Callback;

    .prologue
    const/4 v5, 0x0

    .line 345
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 346
    .local v1, "oldCallback":Lcom/android/internal/app/NightDisplayController$Callback;
    if-eq v1, p1, :cond_0

    .line 347
    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    .line 349
    if-nez p1, :cond_1

    .line 351
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-nez v1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 356
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 355
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 357
    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 358
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 357
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 359
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 360
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 359
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 361
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 361
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 369
    const-string/jumbo v2, "reading_mode_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 370
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 369
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 371
    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 372
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 371
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 373
    const-string/jumbo v2, "temp_disable_scene_screen_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 373
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 375
    const-string/jumbo v2, "screen_color_mode_settings_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 376
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    .line 375
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method
