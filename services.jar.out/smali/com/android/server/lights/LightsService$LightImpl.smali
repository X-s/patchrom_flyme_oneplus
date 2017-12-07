.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mAdjustColor:Z

.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mIdleMode:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mLocked:Z

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 69
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 72
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIdleMode:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mAdjustColor:Z

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;
    .param p2, "id"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method private getIdleColor(I)I
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 245
    if-nez p1, :cond_0

    .line 246
    return v4

    .line 249
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 250
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 251
    .local v3, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 252
    .local v2, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 254
    .local v1, "blue":I
    const/4 v0, 0x1

    .line 255
    shr-int/lit8 v3, v3, 0x4

    .line 256
    shr-int/lit8 v2, v2, 0x4

    .line 257
    shr-int/lit8 v1, v1, 0x4

    .line 259
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method private setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const-wide/32 v8, 0x20000

    .line 176
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLocked:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mAdjustColor:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-eq p1, v0, :cond_8

    .line 179
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 180
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 181
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 182
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 183
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 184
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 185
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 189
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mAdjustColor:Z

    if-eqz v0, :cond_4

    .line 190
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIdleMode:Z

    if-eqz v0, :cond_4

    .line 191
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/lights/LightsService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "original color=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightImpl;->getIdleColor(I)I

    move-result p1

    .line 193
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/lights/LightsService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjust color=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_4
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/lights/LightsService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLight #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": color=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string/jumbo v2, ": brightnessMode="

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string/jumbo v1, ")"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get4(Lcom/android/server/lights/LightsService;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 168
    :cond_7
    return-void

    .line 176
    :cond_8
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_0

    .line 177
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-eq v0, p5, :cond_7

    goto/16 :goto_0

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 208
    throw v0
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 162
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method disableIdleModeLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 226
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/lights/LightsService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "LightsService"

    const-string/jumbo v1, "disableIdleModeLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIdleMode:Z

    .line 228
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-eqz v0, :cond_2

    .line 229
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    iget v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    iget v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 231
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mAdjustColor:Z

    .line 225
    return-void
.end method

.method disableLowPersistence()V
    .locals 6

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLocked:Z

    .line 158
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    iget v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 155
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method enableIdleModeLocked()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 217
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/lights/LightsService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "LightsService"

    const-string/jumbo v1, "enableIdleModeLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIdleMode:Z

    .line 219
    iput-boolean v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mAdjustColor:Z

    .line 220
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-eqz v0, :cond_2

    .line 221
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    iget v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    iget v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 216
    :cond_2
    return-void
.end method

.method enableLowPersistence()V
    .locals 6

    .prologue
    .line 149
    monitor-enter p0

    .line 150
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 148
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pulse()V
    .locals 2

    .prologue
    .line 124
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 123
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .prologue
    const/4 v1, 0x2

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    .line 131
    return-void

    .line 133
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    .line 128
    return-void

    .line 134
    :cond_2
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 136
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get3(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get3(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 78
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    .line 84
    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_0

    .line 88
    sput p1, Lcom/android/server/lights/LightsService;->mScreenBrightness:I

    .line 92
    :cond_0
    and-int/lit16 v1, p1, 0xff

    .line 93
    .local v1, "color":I
    shl-int/lit8 v0, v1, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 94
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 99
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->mUseAutoBrightness:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_1

    .line 100
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->mManualSetAutoBrightness:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    .line 83
    return-void

    .line 101
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-get1(Lcom/android/server/lights/LightsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    const-string/jumbo v2, "screen_brightness"

    const/4 v3, -0x2

    .line 101
    invoke-static {v0, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v1    # "color":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setIdleMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    if-eqz p1, :cond_0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->enableIdleModeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 234
    return-void

    .line 239
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->disableIdleModeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 142
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
