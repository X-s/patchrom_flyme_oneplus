.class Lcom/android/server/fingerprint/FingerprintService$4$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$4;->onError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$4;

.field final synthetic val$clientType:I

.field final synthetic val$deviceId:J

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$4;JII)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$4$4;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$4$4;->val$error:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$4$4;->val$clientType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$4$4;->val$deviceId:J

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$4$4;->val$error:I

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$4$4;->val$clientType:I

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;JII)V

    .line 955
    return-void
.end method
