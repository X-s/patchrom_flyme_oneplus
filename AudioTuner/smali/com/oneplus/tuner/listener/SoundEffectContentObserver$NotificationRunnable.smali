.class final Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "SoundEffectContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/listener/SoundEffectContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/tuner/listener/SoundEffectContentObserver;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/listener/SoundEffectContentObserver;Landroid/net/Uri;Ljava/util/ArrayList;Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "listener"    # Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;",
            ">;",
            "Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/listener/SoundEffectContentObserver$ChangeCondition;>;"
    iput-object p1, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;->this$0:Lcom/oneplus/tuner/listener/SoundEffectContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    .line 43
    iput-object p3, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;->mConditions:Ljava/util/ArrayList;

    .line 44
    iput-object p4, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;->mListener:Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;

    .line 45
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;->mListener:Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;

    iget-object v1, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$NotificationRunnable;->mConditions:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;->onChange(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 50
    return-void
.end method
