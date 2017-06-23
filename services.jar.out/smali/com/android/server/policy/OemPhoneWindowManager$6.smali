.class Lcom/android/server/policy/OemPhoneWindowManager$6;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$6;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$6;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$6;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$200(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V

    .line 301
    return-void
.end method
