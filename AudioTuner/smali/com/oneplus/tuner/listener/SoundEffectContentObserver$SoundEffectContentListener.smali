.class public interface abstract Lcom/oneplus/tuner/listener/SoundEffectContentObserver$SoundEffectContentListener;
.super Ljava/lang/Object;
.source "SoundEffectContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/listener/SoundEffectContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoundEffectContentListener"
.end annotation


# virtual methods
.method public abstract onChange(Landroid/net/Uri;Ljava/util/ArrayList;)V
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
.end method
