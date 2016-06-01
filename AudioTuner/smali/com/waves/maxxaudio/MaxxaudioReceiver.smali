.class public Lcom/waves/maxxaudio/MaxxaudioReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MaxxaudioReceiver.java"


# static fields
.field private static final STARTSERVICE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MaxxaudioReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    new-instance v0, Lcom/waves/maxxaudio/MaxxaudioReceiver$1;

    invoke-direct {v0, p0}, Lcom/waves/maxxaudio/MaxxaudioReceiver$1;-><init>(Lcom/waves/maxxaudio/MaxxaudioReceiver;)V

    iput-object v0, p0, Lcom/waves/maxxaudio/MaxxaudioReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/waves/maxxaudio/MaxxaudioReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/waves/maxxaudio/MaxxaudioReceiver;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxaudioReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MaxxaudioReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxxaudioReceiver onReceive intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v1, "android.intent.action.OPPO_OTA_UPDATE_SUCCESSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.OPPO_RECOVER_UPDATE_SUCCESSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    :cond_0
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->deleteMPSFile()V

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxaudioReceiver;->mContext:Landroid/content/Context;

    .line 41
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxaudioReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
