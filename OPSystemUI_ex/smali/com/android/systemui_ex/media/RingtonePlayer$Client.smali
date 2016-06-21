.class Lcom/android/systemui_ex/media/RingtonePlayer$Client;
.super Ljava/lang/Object;
.source "RingtonePlayer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/media/RingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private final mRingtone:Landroid/media/Ringtone;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/systemui_ex/media/RingtonePlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/media/RingtonePlayer;Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/UserHandle;Landroid/media/AudioAttributes;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui_ex/media/RingtonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    .line 78
    new-instance v0, Landroid/media/Ringtone;

    # invokes: Lcom/android/systemui_ex/media/RingtonePlayer;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    invoke-static {p1, p4}, Lcom/android/systemui_ex/media/RingtonePlayer;->access$000(Lcom/android/systemui_ex/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 79
    iget-object v0, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0, p5}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0, p3}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 81
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/media/RingtonePlayer$Client;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/media/RingtonePlayer$Client;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/media/RingtonePlayer$Client;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/media/RingtonePlayer$Client;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui_ex/media/RingtonePlayer;

    # getter for: Lcom/android/systemui_ex/media/RingtonePlayer;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/systemui_ex/media/RingtonePlayer;->access$100(Lcom/android/systemui_ex/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui_ex/media/RingtonePlayer;

    # getter for: Lcom/android/systemui_ex/media/RingtonePlayer;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/systemui_ex/media/RingtonePlayer;->access$100(Lcom/android/systemui_ex/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui_ex/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
