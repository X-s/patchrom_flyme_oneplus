.class public interface abstract Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
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
    name = "IdentifyListener"
.end annotation


# static fields
.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_FAILURE:I = 0x65

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field public static final RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x70

.field public static final RESULT_NOT_SUPPORT:I = 0x6f

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_SENSOR_ERROR:I = 0x74

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TIMEOUT:I = 0x71


# virtual methods
.method public abstract onResult(III)V
.end method
