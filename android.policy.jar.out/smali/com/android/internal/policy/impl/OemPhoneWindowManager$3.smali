.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;->onIdentified(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/FingerprintUnlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 718
    return-void
.end method
