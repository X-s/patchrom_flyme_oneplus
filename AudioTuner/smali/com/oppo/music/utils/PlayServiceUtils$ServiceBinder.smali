.class Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "PlayServiceUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/utils/PlayServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/ServiceConnection;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 41
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 44
    invoke-static {p2}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/music/service/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    .line 46
    iget-object v0, p0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    .line 57
    return-void
.end method
