.class public abstract Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.super Ljava/lang/Object;
.source "QSTile.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$1;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$SignalState;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$BooleanState;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;,
        Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui_ex/controlpanel/policy/Listenable;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

.field protected mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

.field protected final mContext:Landroid/content/Context;

.field private mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

.field protected final mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui_ex/controlpanel/qs/QSTile",
            "<TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

.field private mNeedSetCallbackControlPanel:Z

.field protected final mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private final mTmpState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "QSTile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .prologue
    .line 75
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QSTile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mUiHandler:Landroid/os/Handler;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mTmpState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mNeedSetCallbackControlPanel:Z

    .line 76
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    .line 77
    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    invoke-interface {p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui_ex/controlpanel/qs/QSTile$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    .param p1, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleSetDetailCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    .param p1, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleSetCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mAnnounceNextStateChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleScanStateChanged(Z)V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 225
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;->onScanStateChanged(Z)V

    .line 228
    :cond_0
    return-void
.end method

.method private handleSetCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    .prologue
    .line 165
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method private handleSetDetailCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    .prologue
    .line 174
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    .line 175
    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 216
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;->onShowDetail(Z)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;->onShowDetail(Z)V

    .line 222
    :cond_1
    return-void
.end method

.method private handleStateChanged()V
    .locals 4

    .prologue
    .line 194
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->shouldAnnouncementBeDelayed()Z

    move-result v1

    .line 195
    .local v1, "delayAnnouncement":Z
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    invoke-interface {v2, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V

    .line 197
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "announcement":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    invoke-interface {v2, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    .line 204
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mAnnounceNextStateChange:Z

    .line 205
    return-void

    .line 204
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public click()V
    .locals 2

    .prologue
    .line 123
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 124
    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;ZZZ)Lcom/android/systemui_ex/controlpanel/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isShortcut"    # Z
    .param p3, "hasDetailInfo"    # Z
    .param p4, "showDisabledCross"    # Z

    .prologue
    .line 99
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    new-instance v0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;-><init>(Landroid/content/Context;ZZZ)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 155
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 156
    return-void
.end method

.method public fireScanStateChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 151
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/16 v3, 0x9

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void

    :cond_0
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    return-object v0
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->setListening(Z)V

    .line 236
    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    .line 237
    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mDetailCallback:Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    .line 238
    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .prologue
    .line 183
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 186
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mTmpState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mTmpState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mState:Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;->copyTo(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)Z

    move-result v0

    .line 188
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleStateChanged()V

    .line 191
    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .prologue
    .line 179
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    return-void
.end method

.method protected handleSetControlPanelCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    .prologue
    .line 170
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    .line 171
    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;Ljava/lang/Object;)V
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
    .line 231
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method protected abstract isShortcutTile()Z
.end method

.method protected needSetCallbackControlPanel()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mNeedSetCallbackControlPanel:Z

    return v0
.end method

.method protected abstract newTileState()Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method protected final refreshState()V
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->refreshState(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 143
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public secondaryClick()V
    .locals 2

    .prologue
    .line 127
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method

.method public setCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    .prologue
    .line 115
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public setTileDetailCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    .prologue
    .line 119
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public showDetail(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public showDisabledCross()Z
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public userSwitch(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 147
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHandler:Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method
