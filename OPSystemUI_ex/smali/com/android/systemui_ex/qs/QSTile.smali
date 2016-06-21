.class public abstract Lcom/android/systemui_ex/qs/QSTile;
.super Ljava/lang/Object;
.source "QSTile.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/qs/QSTile$BooleanState;,
        Lcom/android/systemui_ex/qs/QSTile$State;,
        Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;,
        Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;,
        Lcom/android/systemui_ex/qs/QSTile$Icon;,
        Lcom/android/systemui_ex/qs/QSTile$Host;,
        Lcom/android/systemui_ex/qs/QSTile$Callback;,
        Lcom/android/systemui_ex/qs/QSTile$H;,
        Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui_ex/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui_ex/statusbar/policy/Listenable;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Lcom/android/systemui_ex/qs/QSTile$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui_ex/qs/QSTile",
            "<TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui_ex/qs/QSTile$Host;

.field protected final mState:Lcom/android/systemui_ex/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private final mTmpState:Lcom/android/systemui_ex/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "QSTile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/qs/QSTile;->DEBUG:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/qs/QSTile;Lcom/android/systemui_ex/qs/QSTile$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSTile;
    .param p1, "x1"    # Lcom/android/systemui_ex/qs/QSTile$Callback;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSTile;->handleSetCallback(Lcom/android/systemui_ex/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/qs/QSTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui_ex/qs/QSTile;->mAnnounceNextStateChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/qs/QSTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSTile;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/qs/QSTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSTile;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/qs/QSTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSTile;->handleScanStateChanged(Z)V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 211
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/qs/QSTile$Callback;->onScanStateChanged(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method private handleSetCallback(Lcom/android/systemui_ex/qs/QSTile$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/qs/QSTile$Callback;

    .prologue
    .line 156
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 199
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/qs/QSTile$Callback;->onShowDetail(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 4

    .prologue
    .line 177
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTile;->shouldAnnouncementBeDelayed()Z

    move-result v1

    .line 178
    .local v1, "delayAnnouncement":Z
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile;->mState:Lcom/android/systemui_ex/qs/QSTile$State;

    invoke-interface {v2, v3}, Lcom/android/systemui_ex/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui_ex/qs/QSTile$State;)V

    .line 180
    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui_ex/qs/QSTile;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "announcement":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    invoke-interface {v2, v0}, Lcom/android/systemui_ex/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    .line 187
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui_ex/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/qs/QSTile;->mAnnounceNextStateChange:Z

    .line 188
    return-void

    .line 187
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 205
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public click()V
    .locals 2

    .prologue
    .line 110
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mHandler:Lcom/android/systemui_ex/qs/QSTile$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 111
    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui_ex/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    new-instance v0, Lcom/android/systemui_ex/qs/QSTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui_ex/qs/QSTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/systemui_ex/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mState:Lcom/android/systemui_ex/qs/QSTile$State;

    return-object v0
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSTile;->setListening(Z)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mCallback:Lcom/android/systemui_ex/qs/QSTile$Callback;

    .line 223
    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .prologue
    .line 166
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 169
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTile;->mTmpState:Lcom/android/systemui_ex/qs/QSTile$State;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui_ex/qs/QSTile;->handleUpdateState(Lcom/android/systemui_ex/qs/QSTile$State;Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSTile;->mTmpState:Lcom/android/systemui_ex/qs/QSTile$State;

    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSTile;->mState:Lcom/android/systemui_ex/qs/QSTile$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/qs/QSTile$State;->copyTo(Lcom/android/systemui_ex/qs/QSTile$State;)Z

    move-result v0

    .line 171
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/systemui_ex/qs/QSTile;->handleStateChanged()V

    .line 174
    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .prologue
    .line 162
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui_ex/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 217
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public longClick()V
    .locals 2

    .prologue
    .line 118
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mHandler:Lcom/android/systemui_ex/qs/QSTile$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 119
    return-void
.end method

.method protected final refreshState()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/qs/QSTile;->refreshState(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 130
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mHandler:Lcom/android/systemui_ex/qs/QSTile$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public secondaryClick()V
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mHandler:Lcom/android/systemui_ex/qs/QSTile$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method

.method public setCallback(Lcom/android/systemui_ex/qs/QSTile$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui_ex/qs/QSTile$Callback;

    .prologue
    .line 106
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mHandler:Lcom/android/systemui_ex/qs/QSTile$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    .prologue
    .line 191
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public userSwitch(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 134
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSTile;->mHandler:Lcom/android/systemui_ex/qs/QSTile$H;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui_ex/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method
