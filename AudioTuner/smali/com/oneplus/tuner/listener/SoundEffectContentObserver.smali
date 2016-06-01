.class public Lcom/oneplus/tuner/listener/SoundEffectContentObserver;
.super Landroid/database/ContentObserver;
.source "SoundEffectContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;,
        Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;,
        Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mListeners:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method public clearListeners()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    iget-object v4, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    .local v0, "count":I
    iget-object v4, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 85
    iget-object v4, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;

    .line 86
    .local v3, "listener":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;
    invoke-interface {v3, p1, p2}, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;->onChange(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    .end local v3    # "listener":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 94
    iget-object v4, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;

    .line 95
    .restart local v3    # "listener":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;
    iget-object v4, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;

    invoke-direct {v5, p0, p1, p2, v3}, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;-><init>(Lcom/oneplus/tuner/listener/SoundEffectContentObserver;Landroid/net/Uri;Ljava/util/ArrayList;Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v2    # "j":I
    .end local v3    # "listener":Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;
    :cond_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 75
    return-void
.end method

.method public registerListener(Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;)V
    .locals 1
    .param p1, "l"    # Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;)V
    .locals 1
    .param p1, "l"    # Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method
