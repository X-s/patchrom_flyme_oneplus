.class public Lcom/oneplus/fingerprints/service/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    }
.end annotation


# static fields
.field static final MAX_RETRY_DELAYS:[J

.field static final MIN_RETRY_DELAYS:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/fingerprints/service/FingerprintManager;->MAX_RETRY_DELAYS:[J

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/fingerprints/service/FingerprintManager;->MIN_RETRY_DELAYS:[J

    return-void

    .line 105
    :array_0
    .array-data 8
        0x5dc
        0x1f4
        0x12c
        0xc8
        0x64
        0x12c
        0xc8
        0x64
        0xc8
        0x64
        0x32
    .end array-data

    .line 108
    :array_1
    .array-data 8
        0x12c
        0xc8
        0x64
    .end array-data
.end method
