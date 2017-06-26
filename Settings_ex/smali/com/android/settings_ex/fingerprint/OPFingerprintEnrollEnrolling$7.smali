.class Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$7;
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
    .line 370
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$7;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$7;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$7;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    const v2, 0x7f0c040c

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->access$400(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V

    .line 374
    return-void
.end method
