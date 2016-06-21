.class public interface abstract Lcom/android/systemui_ex/doze/DozeHost;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;,
        Lcom/android/systemui_ex/doze/DozeHost$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui_ex/doze/DozeHost$Callback;)V
.end method

.method public abstract isPowerSaveActive()Z
.end method

.method public abstract pulseWhileDozing(Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;I)V
.end method

.method public abstract removeCallback(Lcom/android/systemui_ex/doze/DozeHost$Callback;)V
.end method

.method public abstract startDozing(Ljava/lang/Runnable;)V
.end method

.method public abstract stopDozing()V
.end method
