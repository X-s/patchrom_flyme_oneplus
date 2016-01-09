.class public interface abstract Lcom/oneplus/fingerprints/service/FingerprintManager$OnStatusListener;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStatusListener"
.end annotation


# static fields
.field public static final STATUS_INPUTTING:I = 0x2

.field public static final STATUS_INPUT_COMPLETED:I = 0x3

.field public static final STATUS_WAITING_FOR_INPUT:I = 0x1


# virtual methods
.method public abstract onStatus(II)V
.end method
