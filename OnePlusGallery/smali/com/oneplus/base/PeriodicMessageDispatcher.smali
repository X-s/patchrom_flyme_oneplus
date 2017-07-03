.class public interface abstract Lcom/oneplus/base/PeriodicMessageDispatcher;
.super Ljava/lang/Object;
.source "PeriodicMessageDispatcher.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final FLAG_UNIQUE:I = 0x1


# virtual methods
.method public abstract pause()V
.end method

.method public abstract removeMessages(Landroid/os/Handler;I)V
.end method

.method public abstract resume()V
.end method

.method public abstract scheduleMessage(Landroid/os/Handler;IIILjava/lang/Object;I)V
.end method
