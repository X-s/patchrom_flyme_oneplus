.class public interface abstract Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$OnStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnrolCallback"
.end annotation


# virtual methods
.method public abstract onEnrollDuplicated(I)V
.end method

.method public abstract onEnrolled(I)V
.end method

.method public abstract onEnrollmentFailed()V
.end method

.method public abstract onProgress(I)V
.end method
