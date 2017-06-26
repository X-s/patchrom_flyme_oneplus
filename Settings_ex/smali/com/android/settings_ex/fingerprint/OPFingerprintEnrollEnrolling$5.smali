.class Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$5;
.super Ljava/lang/Object;
.source "OPFingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$5;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mToken:[B

    # invokes: Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->launchFinish([B)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->access$300(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;[B)V

    .line 361
    return-void
.end method
