.class public interface abstract Lcom/oneplus/camera/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final FLAG_1_5X_FASTER:I = 0x2

.field public static final FLAG_LOOP:I = 0x1

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1


# virtual methods
.method public abstract loadSound(III)Lcom/oneplus/base/Handle;
.end method

.method public abstract playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;
.end method
