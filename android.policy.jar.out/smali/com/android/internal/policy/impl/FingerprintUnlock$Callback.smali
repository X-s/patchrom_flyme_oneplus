.class interface abstract Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract keepScreenOn(I)V
.end method

.method public abstract onIdentified(IZI)V
.end method

.method public abstract onNomatch(IIIII)V
.end method

.method public abstract onStatus(II)V
.end method
