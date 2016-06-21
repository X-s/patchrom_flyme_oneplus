.class public Lcom/android/systemui_ex/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/CommandQueue$1;,
        Lcom/android/systemui_ex/statusbar/CommandQueue$H;,
        Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/android/internal/statusbar/StatusBarIconList;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    .param p2, "list"    # Lcom/android/internal/statusbar/StatusBarIconList;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui_ex/statusbar/CommandQueue;Lcom/android/systemui_ex/statusbar/CommandQueue$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    .line 106
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/CommandQueue;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/CommandQueue;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    return-object v0
.end method


# virtual methods
.method public animateCollapsePanels()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateExpandSettingsPanel()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public buzzBeepBlinked()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 6

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disable(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0xe0000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v5, 0xe0000

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v4, v5, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    monitor-exit v3

    .line 196
    return-void

    :cond_0
    move v2, v1

    .line 192
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notificationLightOff()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x100000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notificationLightPulse(III)V
    .locals 4
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x110000

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, p2, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public preloadRecentApps()V
    .locals 6

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeIcon(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 119
    const/high16 v1, 0x10000

    or-int v0, v1, p1

    .line 120
    .local v0, "what":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 122
    monitor-exit v2

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 111
    const/high16 v1, 0x10000

    or-int v0, v1, p1

    .line 112
    .local v0, "what":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 114
    monitor-exit v2

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 176
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "showImeSwitcherKey"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    monitor-exit v2

    .line 179
    return-void

    .line 178
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSystemUiVisibility(II)V
    .locals 4
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x60000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showRecentApps(Z)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0xd0000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0xd0000

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showScreenPinningRequest()V
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x120000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggleRecentApps()V
    .locals 6

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public topAppWindowChanged(Z)V
    .locals 6
    .param p1, "menuVisible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x70000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x70000

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
