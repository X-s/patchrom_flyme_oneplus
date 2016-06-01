.class public Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetPlugReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EarPhoneListener"

.field public static mHeadsetPlugged:Z


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mListeners:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v5, "EarPhoneListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 52
    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 54
    const-string v5, "state"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 56
    const-string v5, "EarPhoneListener"

    const-string v6, "earphone unplugged"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sput-boolean v10, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 60
    invoke-static {v10}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setHeadsetPlugStatus(Z)V

    .line 63
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v4

    .line 64
    .local v4, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v4, v8}, Lcom/waves/maxxaudio/MaxxAudioManager;->setOutputMode(I)V

    .line 68
    :cond_0
    iget-object v5, p0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 70
    .local v1, "count":I
    const-string v5, "EarPhoneListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mListeners.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 73
    iget-object v5, p0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;

    .line 74
    .local v3, "lis":Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
    invoke-interface {v3}, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;->onHeadsetUnplugged()V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "lis":Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
    .end local v4    # "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    :cond_1
    const-string v5, "state"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 79
    const-string v5, "EarPhoneListener"

    const-string v6, "earphone plugged"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sput-boolean v8, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 83
    invoke-static {v8}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setHeadsetPlugStatus(Z)V

    .line 86
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v4

    .line 87
    .restart local v4    # "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    if-eqz v4, :cond_2

    .line 88
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager;->setOutputMode(I)V

    .line 91
    :cond_2
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v5, :cond_3

    const-wide/16 v6, -0x1

    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v8, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-boolean v5, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mNeedCheckUI:Z

    if-eqz v5, :cond_3

    .line 95
    const-string v5, "EarPhoneListener"

    const-string v6, "getMaxxValues"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v4}, Lcom/waves/maxxaudio/MaxxAudioManager;->getMaxxValues()V

    .line 97
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncEnforceInitUsedDataRunnable()V

    .line 100
    :cond_3
    sput-boolean v10, Lcom/oneplus/tuner/providers/AudioTunerPreference;->mNeedCheckUI:Z

    .line 102
    iget-object v5, p0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 104
    .restart local v1    # "count":I
    const-string v5, "EarPhoneListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mListeners.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 107
    iget-object v5, p0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;

    .line 108
    .restart local v3    # "lis":Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
    invoke-interface {v3}, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;->onHeadsetPlugged()V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "lis":Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
    .end local v4    # "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    :cond_4
    return-void
.end method

.method public registerListener(Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public unregisterListener(Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method
